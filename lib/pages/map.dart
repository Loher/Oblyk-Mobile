import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:oblyk/api/cragApi.dart';
import 'package:oblyk/entities/Crag/crag.dart';
import 'package:oblyk/pages/crag/crag.dart';
import 'package:oblyk/utils/markerType.dart';
import 'package:oblyk/entities/Crag/cragsResponse.dart';


class MapWidget extends State {

  FlutterMap map;
  DateTime lastMarkerLoading;
  LatLng coordinates;
  double zoom;
  MarkerLayerOptions layerOptions;

  MapWidget(){
    initLocation();
    initLayerOptions();
  }

  Widget build(BuildContext context) {

    // Init markers with current position
    loadMarkers(this.coordinates.latitude.toString(), this.coordinates.longitude.toString());

    map = initMap();

    return Container(
      child: new FutureBuilder(
          future: getCrags(this.coordinates.latitude.toString(), this.coordinates.longitude.toString()),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData && snapshot.data != null){
              cragsToMarker(snapshot.data);
              return map;
            }
            else{
              return new Container();
            }
          }
      ),
    );
  }

  /** Init coordinates */
  void initLocation() {
    this.coordinates = new LatLng(48.111339, -1.68002);
    this.zoom = 10.0;
  }

  void initLayerOptions(){
    this.layerOptions = new MarkerLayerOptions(
      markers: []
    );
  }


  /** Init map */
  FlutterMap initMap(){
    return new FlutterMap(
      options: new MapOptions(
        center: this.coordinates,
        onPositionChanged:  (position, isGesture) {
          // When position change --> update coordinates & reload markers
          this.coordinates.latitude = position.center.latitude;
          this.coordinates.longitude = position.center.longitude;
          loadMarkers(position.center.latitude.toString(), position.center.longitude.toString());
        },
        zoom: this.zoom,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://api.tiles.mapbox.com/v4/" "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
          additionalOptions: {
            'accessToken': 'pk.eyJ1IjoiZnJhbmNpc3NpbGEiLCJhIjoiY2p1NnI5ajg3MWhoMzQ0dGF5ZjhlOTV4OCJ9.4HRrvjYAaKeY_XfDbTc7rQ',
            'id': 'mapbox.streets',
          },
        ),
        this.layerOptions
      ],
    );
  }


  /** Load markers from Oblyk API */
  void loadMarkers(String lat, String lng){
    // Check if last loading is not less than a second ago
    if(lastMarkerLoading == null || DateTime.now().isAfter(lastMarkerLoading.add(new Duration(milliseconds:500)))){
      lastMarkerLoading = new DateTime.now();
      // Get markers according to location
      getCrags(lat, lng).then((response) {
        lastMarkerLoading = new DateTime.now();
        cragsToMarker(response);
      });
    }
  }

  /** Transform list of crags into list of markers */
  void cragsToMarker(CragsResponse response){
    List<Marker> markers = [];
    response.data.crags.forEach((crag) => markers.add(createNewMarker(crag)));
    map.layers.removeLast();
    map.layers.add(new MarkerLayerOptions(markers: markers));
  }

  /** Crate marker from crag */
  Marker createNewMarker(Crag crag){
    // Transform a crag into a marker
    return new Marker(
      width: 30.0,
      height: 30.0,
      point: new LatLng(crag.lat, crag.lng),
      builder: (ctx) =>
      new Container(
        child: GestureDetector(
          child: Image.asset(getMarkerImgPath(crag)),
          onTap: () {
            onTapCrag(crag);
          },
        ),
      )
    );
  }


  /** On tap callback for marker */
  void onTapCrag(Crag crag){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CragPage(crag)),
    );
  }


}

class Map extends StatefulWidget {
  @override
  MapWidget createState() => new MapWidget();
}