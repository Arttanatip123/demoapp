import 'package:demoapp/model/error_entity.dart';

errorEntityFromJson(ErrorEntity data, Map<String, dynamic> json) {
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

Map<String, dynamic> errorEntityToJson(ErrorEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['type'] = entity.type;
  data['code'] = entity.code;
  data['message'] = entity.message;
  data['field'] = entity.field;
  data['line'] = entity.line;
  return data;
}
