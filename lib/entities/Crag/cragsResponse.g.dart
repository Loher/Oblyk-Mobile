// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cragsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CragsResponse _$CragsResponseFromJson(Map<String, dynamic> json) {
  return CragsResponse(
      data: json['data'] == null
          ? null
          : CragsResponseDetails.fromJson(
              json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CragsResponseToJson(CragsResponse instance) =>
    <String, dynamic>{'data': instance.data};
