

import 'package:oblyk/entities/Crag/cragsResponse.dart';
import 'package:oblyk/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


Future<CragsResponse> getCrags(String latitude, String longitude) async {
  var url =  OBLYK_API_URL + 'crags/around-place/' + latitude + '/' + longitude + '/100';
  final response = await http.get(url);
  print(response.body);
  return CragsResponse.fromJson(json.decode(response.body.toString()));
}

