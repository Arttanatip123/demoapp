import 'package:demoapp/model/base_response_entity.dart';

baseResponseEntityFromJson(BaseResponseEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = BaseResponseData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> baseResponseEntityToJson(BaseResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data?.toJson();
	return data;
}

baseResponseDataFromJson(BaseResponseData data, Map<String, dynamic> json) {
	if (json['order_id'] != null) {
		data.orderId = json['order_id'] is String
				? int.tryParse(json['order_id'])
				: json['order_id'].toInt();
	}
	if (json['order_no'] != null) {
		data.orderNo = json['order_no'].toString();
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['comment'] != null) {
		data.comment = json['comment'].toString();
	}
	if (json['uploads'] != null) {
		data.uploads = (json['uploads'] as List).map((v) => DataUpload().fromJson(v)).toList();
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	return data;
}

Map<String, dynamic> baseResponseDataToJson(BaseResponseData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['order_id'] = entity.orderId;
	data['order_no'] = entity.orderNo;
	data['message'] = entity.message;
	data['id'] = entity.id;
	data['comment'] = entity.comment;
	data['uploads'] =  entity.uploads?.map((v) => v.toJson())?.toList();
	data['status'] = entity.status;
	return data;
}

dataUploadFromJson(DataUpload data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['width'] != null) {
		data.width = json['width'] is String
				? int.tryParse(json['width'])
				: json['width'].toInt();
	}
	if (json['height'] != null) {
		data.height = json['height'] is String
				? int.tryParse(json['height'])
				: json['height'].toInt();
	}
	if (json['mime'] != null) {
		data.mime = json['mime'].toString();
	}
	if (json['size'] != null) {
		data.size = json['size'] is String
				? int.tryParse(json['size'])
				: json['size'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['resize_url'] != null) {
		data.resizeUrl = json['resize_url'].toString();
	}
	return data;
}

Map<String, dynamic> dataUploadToJson(DataUpload entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['mime'] = entity.mime;
	data['size'] = entity.size;
	data['url'] = entity.url;
	data['resize_url'] = entity.resizeUrl;
	return data;
}