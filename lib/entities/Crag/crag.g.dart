// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crag _$CragFromJson(Map<String, dynamic> json) {
  return Crag(
      id: json['id'] as int,
      label: json['label'] as String,
      country_code: json['country_code'] as String,
      city: json['city'] as String,
      region: json['region'] as String,
      lat: json['lat'] as double,
      lng: json['lng'] as double,
      type_voie: json['type_voie'] as int,
      type_grande_voie: json['type_grande_voie'] as int,
      type_bloc: json['type_bloc'] as int,
      type_deep_water: json['type_deep_water'] as int,
      type_via_ferrata: json['type_via_ferrata'] as int,
      routes_count: json['routes_count'] as int,
      url: json['url'] as String,
      cover: json['cover'] as String,
      distance: json['distance'] as double,
      gap_grade: json['gap_grade'] == null
          ? null
          : Grade.fromJson(json['gap_grade'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CragToJson(Crag instance) => <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'country_code': instance.country_code,
      'city': instance.city,
      'region': instance.region,
      'lat': instance.lat,
      'lng': instance.lng,
      'type_voie': instance.type_voie,
      'type_grande_voie': instance.type_grande_voie,
      'type_bloc': instance.type_bloc,
      'type_deep_water': instance.type_deep_water,
      'type_via_ferrata': instance.type_via_ferrata,
      'routes_count': instance.routes_count,
      'url': instance.url,
      'cover': instance.cover,
      'distance': instance.distance,
      'gap_grade': instance.gap_grade
    };
