
import 'package:json_annotation/json_annotation.dart';
import 'grade.dart';

part 'package:oblyk/entities/Crag/crag.g.dart';

@JsonSerializable(nullable: true)
class Crag {

  int id;
  String label;
  String country_code;
  String city;
  String region;
  double lat;
  double lng;
  int type_voie;
  int type_grande_voie;
  int type_bloc;
  int type_deep_water;
  int type_via_ferrata;
  int routes_count;
  String url;
  String cover;
  double distance;
  Grade gap_grade;


  Crag({this.id, this.label, this.country_code, this.city, this.region, this.lat,
      this.lng, this.type_voie, this.type_grande_voie, this.type_bloc,
      this.type_deep_water, this.type_via_ferrata, this.routes_count, this.url,
      this.cover, this.distance, this.gap_grade});

  factory Crag.fromJson(Map<String, dynamic> json) => _$CragFromJson(json);
  Map<String, dynamic> toJson() => _$CragToJson(this);

}

