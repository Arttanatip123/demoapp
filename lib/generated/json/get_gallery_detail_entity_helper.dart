import 'package:demoapp/model/get_gallery_detail_entity.dart';

getGalleryDetailEntityFromJson(GetGalleryDetailEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = GetGalleryDetailData().fromJson(json['data']);
	}
	if (json['bench'] != null) {
		data.bench = GetGalleryDetailBench().fromJson(json['bench']);
	}
	return data;
}

Map<String, dynamic> getGalleryDetailEntityToJson(GetGalleryDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data?.toJson();
	data['bench'] = entity.bench?.toJson();
	return data;
}

getGalleryDetailDataFromJson(GetGalleryDetailData data, Map<String, dynamic> json) {
	if (json['pagination'] != null) {
		data.pagination = GetGalleryDetailDataPagination().fromJson(json['pagination']);
	}
	if (json['record'] != null) {
		data.record = (json['record'] as List).map((v) => GetGalleryDetailDataRecord().fromJson(v)).toList();
	}
	if (json['cache'] != null) {
		data.cache = json['cache'];
	}
	return data;
}

Map<String, dynamic> getGalleryDetailDataToJson(GetGalleryDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pagination'] = entity.pagination?.toJson();
	data['record'] =  entity.record?.map((v) => v.toJson())?.toList();
	data['cache'] = entity.cache;
	return data;
}

getGalleryDetailDataPaginationFromJson(GetGalleryDetailDataPagination data, Map<String, dynamic> json) {
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

Map<String, dynamic> getGalleryDetailDataPaginationToJson(GetGalleryDetailDataPagination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_page'] = entity.currentPage;
	data['last_page'] = entity.lastPage;
	data['limit'] = entity.limit;
	data['total'] = entity.total;
	return data;
}

getGalleryDetailDataRecordFromJson(GetGalleryDetailDataRecord data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['user'] != null) {
		data.user = GetGalleryDetailDataRecordUser().fromJson(json['user']);
	}
	if (json['image'] != null) {
		data.image = GetGalleryDetailDataRecordImage().fromJson(json['image']);
	}
	if (json['created_at'] != null) {
		data.createdAt = GetGalleryDetailDataRecordCreatedAt().fromJson(json['created_at']);
	}
	if (json['updated_at'] != null) {
		data.updatedAt = GetGalleryDetailDataRecordUpdatedAt().fromJson(json['updated_at']);
	}
	return data;
}

Map<String, dynamic> getGalleryDetailDataRecordToJson(GetGalleryDetailDataRecord entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['description'] = entity.description;
	data['user'] = entity.user?.toJson();
	data['image'] = entity.image?.toJson();
	data['created_at'] = entity.createdAt?.toJson();
	data['updated_at'] = entity.updatedAt?.toJson();
	return data;
}

getGalleryDetailDataRecordUserFromJson(GetGalleryDetailDataRecordUser data, Map<String, dynamic> json) {
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
	return data;
}

Map<String, dynamic> getGalleryDetailDataRecordUserToJson(GetGalleryDetailDataRecordUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	return data;
}

getGalleryDetailDataRecordImageFromJson(GetGalleryDetailDataRecordImage data, Map<String, dynamic> json) {
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

Map<String, dynamic> getGalleryDetailDataRecordImageToJson(GetGalleryDetailDataRecordImage entity) {
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

getGalleryDetailDataRecordCreatedAtFromJson(GetGalleryDetailDataRecordCreatedAt data, Map<String, dynamic> json) {
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

Map<String, dynamic> getGalleryDetailDataRecordCreatedAtToJson(GetGalleryDetailDataRecordCreatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getGalleryDetailDataRecordUpdatedAtFromJson(GetGalleryDetailDataRecordUpdatedAt data, Map<String, dynamic> json) {
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

Map<String, dynamic> getGalleryDetailDataRecordUpdatedAtToJson(GetGalleryDetailDataRecordUpdatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getGalleryDetailBenchFromJson(GetGalleryDetailBench data, Map<String, dynamic> json) {
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

Map<String, dynamic> getGalleryDetailBenchToJson(GetGalleryDetailBench entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['second'] = entity.second;
	data['millisecond'] = entity.millisecond;
	data['format'] = entity.format;
	return data;
}