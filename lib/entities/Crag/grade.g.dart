// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grade _$GradeFromJson(Map<String, dynamic> json) {
  return Grade(
      spreadable_id: json['spreadable_id'] as int,
      min_grade_text: json['min_grade_text'] as String,
      max_grade_text: json['max_grade_text'] as String);
}

Map<String, dynamic> _$GradeToJson(Grade instance) => <String, dynamic>{
      'spreadable_id': instance.spreadable_id,
      'min_grade_text': instance.min_grade_text,
      'max_grade_text': instance.max_grade_text
    };
