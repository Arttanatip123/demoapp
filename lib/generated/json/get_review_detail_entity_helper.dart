import 'package:demoapp/model/get_review_detail_entity.dart';

getReviewDetailEntityFromJson(GetReviewDetailEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = GetReviewDetailData().fromJson(json['data']);
	}
	if (json['bench'] != null) {
		data.bench = GetReviewDetailBench().fromJson(json['bench']);
	}
	return data;
}

Map<String, dynamic> getReviewDetailEntityToJson(GetReviewDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data?.toJson();
	data['bench'] = entity.bench?.toJson();
	return data;
}

getReviewDetailDataFromJson(GetReviewDetailData data, Map<String, dynamic> json) {
	if (json['pagination'] != null) {
		data.pagination = GetReviewDetailDataPagination().fromJson(json['pagination']);
	}
	if (json['record'] != null) {
		data.record = (json['record'] as List).map((v) => GetReviewDetailDataRecord().fromJson(v)).toList();
	}
	if (json['cache'] != null) {
		data.cache = json['cache'];
	}
	return data;
}

Map<String, dynamic> getReviewDetailDataToJson(GetReviewDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pagination'] = entity.pagination?.toJson();
	data['record'] =  entity.record?.map((v) => v.toJson())?.toList();
	data['cache'] = entity.cache;
	return data;
}

getReviewDetailDataPaginationFromJson(GetReviewDetailDataPagination data, Map<String, dynamic> json) {
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

Map<String, dynamic> getReviewDetailDataPaginationToJson(GetReviewDetailDataPagination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_page'] = entity.currentPage;
	data['last_page'] = entity.lastPage;
	data['limit'] = entity.limit;
	data['total'] = entity.total;
	return data;
}

getReviewDetailDataRecordFromJson(GetReviewDetailDataRecord data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['user'] != null) {
		data.user = GetReviewDetailDataRecordUser().fromJson(json['user']);
	}
	if (json['store'] != null) {
		data.store = GetReviewDetailDataRecordStore().fromJson(json['store']);
	}
	if (json['rating'] != null) {
		data.rating = json['rating'] is String
				? int.tryParse(json['rating'])
				: json['rating'].toInt();
	}
	if (json['images'] != null) {
		data.images = (json['images'] as List).map((v) => GetReviewDetailDataRecordImages().fromJson(v)).toList();
	}
	if (json['remark'] != null) {
		data.remark = json['remark'];
	}
	if (json['created_at'] != null) {
		data.createdAt = GetReviewDetailDataRecordCreatedAt().fromJson(json['created_at']);
	}
	if (json['updated_at'] != null) {
		data.updatedAt = GetReviewDetailDataRecordUpdatedAt().fromJson(json['updated_at']);
	}
	return data;
}

Map<String, dynamic> getReviewDetailDataRecordToJson(GetReviewDetailDataRecord entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['description'] = entity.description;
	data['user'] = entity.user?.toJson();
	data['store'] = entity.store?.toJson();
	data['rating'] = entity.rating;
	data['images'] =  entity.images?.map((v) => v.toJson())?.toList();
	data['remark'] = entity.remark;
	data['created_at'] = entity.createdAt?.toJson();
	data['updated_at'] = entity.updatedAt?.toJson();
	return data;
}

getReviewDetailDataRecordUserFromJson(GetReviewDetailDataRecordUser data, Map<String, dynamic> json) {
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
		data.image = GetReviewDetailDataRecordUserImage().fromJson(json['image']);
	}
	return data;
}

Map<String, dynamic> getReviewDetailDataRecordUserToJson(GetReviewDetailDataRecordUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	data['image'] = entity.image?.toJson();
	return data;
}

getReviewDetailDataRecordUserImageFromJson(GetReviewDetailDataRecordUserImage data, Map<String, dynamic> json) {
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

Map<String, dynamic> getReviewDetailDataRecordUserImageToJson(GetReviewDetailDataRecordUserImage entity) {
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

getReviewDetailDataRecordStoreFromJson(GetReviewDetailDataRecordStore data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	return data;
}

Map<String, dynamic> getReviewDetailDataRecordStoreToJson(GetReviewDetailDataRecordStore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

getReviewDetailDataRecordImagesFromJson(GetReviewDetailDataRecordImages data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'].toString();
	}
	if (json['store_id'] != null) {
		data.storeId = json['store_id'] is String
				? int.tryParse(json['store_id'])
				: json['store_id'].toInt();
	}
	if (json['tag'] != null) {
		data.tag = json['tag'].toString();
	}
	if (json['album_id'] != null) {
		data.albumId = json['album_id'] is String
				? int.tryParse(json['album_id'])
				: json['album_id'].toInt();
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
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
	}
	return data;
}

Map<String, dynamic> getReviewDetailDataRecordImagesToJson(GetReviewDetailDataRecordImages entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['store_id'] = entity.storeId;
	data['tag'] = entity.tag;
	data['album_id'] = entity.albumId;
	data['name'] = entity.name;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['mime'] = entity.mime;
	data['size'] = entity.size;
	data['url'] = entity.url;
	data['position'] = entity.position;
	return data;
}

getReviewDetailDataRecordCreatedAtFromJson(GetReviewDetailDataRecordCreatedAt data, Map<String, dynamic> json) {
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

Map<String, dynamic> getReviewDetailDataRecordCreatedAtToJson(GetReviewDetailDataRecordCreatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getReviewDetailDataRecordUpdatedAtFromJson(GetReviewDetailDataRecordUpdatedAt data, Map<String, dynamic> json) {
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

Map<String, dynamic> getReviewDetailDataRecordUpdatedAtToJson(GetReviewDetailDataRecordUpdatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getReviewDetailBenchFromJson(GetReviewDetailBench data, Map<String, dynamic> json) {
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

Map<String, dynamic> getReviewDetailBenchToJson(GetReviewDetailBench entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['second'] = entity.second;
	data['millisecond'] = entity.millisecond;
	data['format'] = entity.format;
	return data;
}