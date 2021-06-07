import 'package:demoapp/model/get_checkin_detail_entity.dart';

getCheckinDetailEntityFromJson(GetCheckinDetailEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = GetCheckinDetailData().fromJson(json['data']);
	}
	if (json['bench'] != null) {
		data.bench = GetCheckinDetailBench().fromJson(json['bench']);
	}
	return data;
}

Map<String, dynamic> getCheckinDetailEntityToJson(GetCheckinDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data?.toJson();
	data['bench'] = entity.bench?.toJson();
	return data;
}

getCheckinDetailDataFromJson(GetCheckinDetailData data, Map<String, dynamic> json) {
	if (json['meta'] != null) {
		data.meta = GetCheckinDetailDataMeta().fromJson(json['meta']);
	}
	if (json['pagination'] != null) {
		data.pagination = GetCheckinDetailDataPagination().fromJson(json['pagination']);
	}
	if (json['record'] != null) {
		data.record = (json['record'] as List).map((v) => GetCheckinDetailDataRecord().fromJson(v)).toList();
	}
	if (json['cache'] != null) {
		data.cache = json['cache'];
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataToJson(GetCheckinDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['meta'] = entity.meta?.toJson();
	data['pagination'] = entity.pagination?.toJson();
	data['record'] =  entity.record?.map((v) => v.toJson())?.toList();
	data['cache'] = entity.cache;
	return data;
}

getCheckinDetailDataMetaFromJson(GetCheckinDetailDataMeta data, Map<String, dynamic> json) {
	if (json['checkin_total'] != null) {
		data.checkinTotal = json['checkin_total'] is String
				? int.tryParse(json['checkin_total'])
				: json['checkin_total'].toInt();
	}
	if (json['user_total'] != null) {
		data.userTotal = json['user_total'] is String
				? int.tryParse(json['user_total'])
				: json['user_total'].toInt();
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataMetaToJson(GetCheckinDetailDataMeta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['checkin_total'] = entity.checkinTotal;
	data['user_total'] = entity.userTotal;
	return data;
}

getCheckinDetailDataPaginationFromJson(GetCheckinDetailDataPagination data, Map<String, dynamic> json) {
	if (json['current_page'] != null) {
		data.currentPage = json['current_page'] is String
				? int.tryParse(json['current_page'])
				: json['current_page'].toInt();
	}
	if (json['last_page'] != null) {
		data.lastPage = json['last_page'] is String
				? int.tryParse(json['last_page'])
				: json['last_page'].toInt();
	}
	if (json['limit'] != null) {
		data.limit = json['limit'] is String
				? int.tryParse(json['limit'])
				: json['limit'].toInt();
	}
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataPaginationToJson(GetCheckinDetailDataPagination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_page'] = entity.currentPage;
	data['last_page'] = entity.lastPage;
	data['limit'] = entity.limit;
	data['total'] = entity.total;
	return data;
}

getCheckinDetailDataRecordFromJson(GetCheckinDetailDataRecord data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['user'] != null) {
		data.user = GetCheckinDetailDataRecordUser().fromJson(json['user']);
	}
	if (json['created_at'] != null) {
		data.createdAt = GetCheckinDetailDataRecordCreatedAt().fromJson(json['created_at']);
	}
	if (json['updated_at'] != null) {
		data.updatedAt = GetCheckinDetailDataRecordUpdatedAt().fromJson(json['updated_at']);
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataRecordToJson(GetCheckinDetailDataRecord entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['user'] = entity.user?.toJson();
	data['created_at'] = entity.createdAt?.toJson();
	data['updated_at'] = entity.updatedAt?.toJson();
	return data;
}

getCheckinDetailDataRecordUserFromJson(GetCheckinDetailDataRecordUser data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['username'] != null) {
		data.username = json['username'].toString();
	}
	if (json['first_name'] != null) {
		data.firstName = json['first_name'].toString();
	}
	if (json['last_name'] != null) {
		data.lastName = json['last_name'].toString();
	}
	if (json['image'] != null) {
		data.image = GetCheckinDetailDataRecordUserImage().fromJson(json['image']);
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataRecordUserToJson(GetCheckinDetailDataRecordUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	data['image'] = entity.image?.toJson();
	return data;
}

getCheckinDetailDataRecordUserImageFromJson(GetCheckinDetailDataRecordUserImage data, Map<String, dynamic> json) {
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

Map<String, dynamic> getCheckinDetailDataRecordUserImageToJson(GetCheckinDetailDataRecordUserImage entity) {
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

getCheckinDetailDataRecordCreatedAtFromJson(GetCheckinDetailDataRecordCreatedAt data, Map<String, dynamic> json) {
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['date'] != null) {
		data.date = json['date'].toString();
	}
	if (json['time'] != null) {
		data.time = json['time'].toString();
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataRecordCreatedAtToJson(GetCheckinDetailDataRecordCreatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getCheckinDetailDataRecordUpdatedAtFromJson(GetCheckinDetailDataRecordUpdatedAt data, Map<String, dynamic> json) {
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['date'] != null) {
		data.date = json['date'].toString();
	}
	if (json['time'] != null) {
		data.time = json['time'].toString();
	}
	return data;
}

Map<String, dynamic> getCheckinDetailDataRecordUpdatedAtToJson(GetCheckinDetailDataRecordUpdatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getCheckinDetailBenchFromJson(GetCheckinDetailBench data, Map<String, dynamic> json) {
	if (json['second'] != null) {
		data.second = json['second'] is String
				? int.tryParse(json['second'])
				: json['second'].toInt();
	}
	if (json['millisecond'] != null) {
		data.millisecond = json['millisecond'] is String
				? double.tryParse(json['millisecond'])
				: json['millisecond'].toDouble();
	}
	if (json['format'] != null) {
		data.format = json['format'].toString();
	}
	return data;
}

Map<String, dynamic> getCheckinDetailBenchToJson(GetCheckinDetailBench entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['second'] = entity.second;
	data['millisecond'] = entity.millisecond;
	data['format'] = entity.format;
	return data;
}