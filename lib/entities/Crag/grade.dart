
import 'package:json_annotation/json_annotation.dart';

part 'grade.g.dart';

@JsonSerializable(nullable: true)
class Grade{

  int spreadable_id;
  String min_grade_text;
  String max_grade_text;


  Grade({this.spreadable_id, this.min_grade_text, this.max_grade_text});

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);
  Map<String, dynamic> toJson() => _$GradeToJson(this);

}