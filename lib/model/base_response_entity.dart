import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class BaseResponseEntity with JsonConvert<BaseResponseEntity> {
  BaseResponseData? data;
}

class BaseResponseData with JsonConvert<BaseResponseData> {
  @JSONField(name: "order_id")
  int? orderId;
  @JSONField(name: "order_no")
  String? orderNo;
  String? message;
  int? id;
  String? comment;
  List<DataUpload>? uploads;
  bool? status;
}

class DataUpload with JsonConvert<DataUpload> {
  String? id;
  String? name;
  int? width;
  int? height;
  String? mime;
  int? size;
  String? url;
  @JSONField(name: "resize_url")
  String? resizeUrl;
}
