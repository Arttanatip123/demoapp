
import 'package:demoapp/generated/json/base/json_convert_content.dart';

class ErrorEntity with JsonConvert<ErrorEntity> {
  String? type;
  int? code;
  String? message;
  String? field;
  String? line;
}
