
import 'package:json_annotation/json_annotation.dart';
import 'package:oblyk/entities/Crag/cragsResponseDetails.dart';

part 'cragsResponse.g.dart';

@JsonSerializable(nullable: true)
class CragsResponse {

  CragsResponseDetails data;

  CragsResponse({this.data});

  factory CragsResponse.fromJson(Map<String, dynamic> json) => _$CragsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CragsResponseToJson(this);

}
