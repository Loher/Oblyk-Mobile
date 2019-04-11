// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cragsResponseDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CragsResponseDetails _$CragsResponseDetailsFromJson(Map<String, dynamic> json) {
  return CragsResponseDetails(
      lng: json['lng'] as String,
      lat: json['lat'] as String,
      radius: json['radius'] as String,
      crags_count: json['crags_count'] as int,
      crags: (json['crags'] as List)
          ?.map((e) =>
              e == null ? null : Crag.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CragsResponseDetailsToJson(
        CragsResponseDetails instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
      'radius': instance.radius,
      'crags_count': instance.crags_count,
      'crags': instance.crags
    };
