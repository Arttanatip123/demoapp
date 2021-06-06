import 'package:demoapp/generated/json/base/json_convert_content.dart';

class BaseErrorPublicApiEntity with JsonConvert<BaseErrorPublicApiEntity> {
  dynamic? errors;
  String? message;
}
