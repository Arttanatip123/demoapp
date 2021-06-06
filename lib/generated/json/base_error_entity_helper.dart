import 'package:demoapp/errors/base_error_entity.dart';
import 'dart:convert';
import 'package:demoapp/api/errors/base_error_public_api_entity.dart';
import 'package:dio/dio.dart';

baseErrorEntityFromJson(BaseErrorEntity data, Map<String, dynamic> json) {
  if (json['error'] != null) {
    data.error = BaseError().fromJson(json['error']);
  }
  return data;
}

Map<String, dynamic> baseErrorEntityToJson(BaseErrorEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['error'] = entity.error?.toJson();
  return data;
}

baseErrorFromJson(BaseError data, Map<String, dynamic> json) {
  if (json['type'] != null) {
    data.type = json['type'].toString();
  }
  if (json['code'] != null) {
    data.code = json['code'] is String ? int.tryParse(json['code']) : json['code'].toInt();
  }
  if (json['message'] != null) {
    data.message = json['message'].toString();
  }
  if (json['field'] != null) {
    data.field = json['field'].toString();
  }
  if (json['line'] != null) {
    data.line = json['line'].toString();
  }
  return data;
}

Map<String, dynamic> baseErrorToJson(BaseError entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['type'] = entity.type;
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['field'] = entity.field;
  data['line'] = entity.line;
  return data;
}
