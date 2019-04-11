

import 'package:oblyk/entities/Crag/crag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cragsResponseDetails.g.dart';

@JsonSerializable(nullable: true)
class CragsResponseDetails{

  String lng;
  String lat;
  String radius;
  int crags_count;
  List<Crag> crags;

  CragsResponseDetails({this.lng, this.lat, this.radius, this.crags_count, this.crags});

  factory CragsResponseDetails.fromJson(Map<String, dynamic> json) => _$CragsResponseDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$CragsResponseDetailsToJson(this);

}