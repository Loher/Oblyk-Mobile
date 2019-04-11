import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:oblyk/api/cragApi.dart';
import 'package:oblyk/entities/Crag/crag.dart';
import 'crag.dart';
import 'package:oblyk/utils/markerType.dart';


class MapWidget extends State {

  FlutterMap map;
  DateTime lastMarkerLoading;
  // Default coordinates : Rennes
  LatLng coordinates;
  double zoom;


  Widget build(BuildContext context) {

    // Init markers with current position
    initLocation();
    loadMarkers('48.0833', '-1.6833');

    map = new FlutterMap(
      options: new MapOptions(
        center: this.coordinates,
        onPositionChanged:  (position, isGesture) {
          // When position change --> reload markers
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
        new MarkerLayerOptions(
          markers: []
        )
      ],
    );

    return map;
  }

  void initLocation() {
    this.coordinates = new LatLng(48.111339, -1.68002);
    this.zoom = 10.0;
  }




  /** Load markers from Oblyk API */
  void loadMarkers(String lat, String lng){
    // Check if last loading is not less than a second ago
    if(lastMarkerLoading == null || DateTime.now().isAfter(lastMarkerLoading.add(new Duration(seconds:1)))){
      lastMarkerLoading = new DateTime.now();
      // Get markers according to location
      getCrags(lat, lng).then((response) {
        lastMarkerLoading = new DateTime.now();
        List<Marker> markers = [];
        response.data.crags.forEach((crag) => markers.add(createNewMarker(crag)));
        map.layers.removeLast();
        map.layers.add(new MarkerLayerOptions(markers: markers));
      });
    }
  }

  Marker createNewMarker(Crag crag){
    // Transform a crag into a marker
    return new Marker(
      width: 20.0,
      height: 20.0,
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
      MaterialPageRoute(builder: (context) => CragWidget(crag)),
    );
  }


}

class Map extends StatefulWidget {
  @override
  MapWidget createState() => new MapWidget();
}