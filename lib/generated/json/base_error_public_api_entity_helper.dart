import 'package:demoapp/api/errors/base_error_public_api_entity.dart';

baseErrorPublicApiEntityFromJson(BaseErrorPublicApiEntity data, Map<String, dynamic> json) {
  if (json['errors'] != null) {
    data.errors = json['errors'];
  }
  if (json['message'] != null) {
    data.message = json['message'].toString();
  }
  return data;
}

Map<String, dynamic> baseErrorPublicApiEntityToJson(BaseErrorPublicApiEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['errors'] = entity.errors;
  data['message'] = entity.message;
  return data;
}
