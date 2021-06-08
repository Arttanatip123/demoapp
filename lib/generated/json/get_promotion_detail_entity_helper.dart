import 'package:demoapp/model/get_promotion_detail_entity.dart';

getPromotionDetailEntityFromJson(GetPromotionDetailEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = GetPromotionDetailData().fromJson(json['data']);
	}
	if (json['bench'] != null) {
		data.bench = GetPromotionDetailBench().fromJson(json['bench']);
	}
	return data;
}

Map<String, dynamic> getPromotionDetailEntityToJson(GetPromotionDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data?.toJson();
	data['bench'] = entity.bench?.toJson();
	return data;
}

getPromotionDetailDataFromJson(GetPromotionDetailData data, Map<String, dynamic> json) {
	if (json['pagination'] != null) {
		data.pagination = GetPromotionDetailDataPagination().fromJson(json['pagination']);
	}
	if (json['record'] != null) {
		data.record = (json['record'] as List).map((v) => GetPromotionDetailDataRecord().fromJson(v)).toList();
	}
	if (json['cache'] != null) {
		data.cache = json['cache'];
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataToJson(GetPromotionDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pagination'] = entity.pagination?.toJson();
	data['record'] =  entity.record?.map((v) => v.toJson())?.toList();
	data['cache'] = entity.cache;
	return data;
}

getPromotionDetailDataPaginationFromJson(GetPromotionDetailDataPagination data, Map<String, dynamic> json) {
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

Map<String, dynamic> getPromotionDetailDataPaginationToJson(GetPromotionDetailDataPagination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_page'] = entity.currentPage;
	data['last_page'] = entity.lastPage;
	data['limit'] = entity.limit;
	data['total'] = entity.total;
	return data;
}

getPromotionDetailDataRecordFromJson(GetPromotionDetailDataRecord data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'];
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['group_type'] != null) {
		data.groupType = json['group_type'].toString();
	}
	if (json['parent_id'] != null) {
		data.parentId = json['parent_id'] is String
				? int.tryParse(json['parent_id'])
				: json['parent_id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['description_short'] != null) {
		data.descriptionShort = json['description_short'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['store'] != null) {
		data.store = GetPromotionDetailDataRecordStore().fromJson(json['store']);
	}
	if (json['venue'] != null) {
		data.venue = GetPromotionDetailDataRecordVenue().fromJson(json['venue']);
	}
	if (json['show_time'] != null) {
		data.showTime = GetPromotionDetailDataRecordShowTime().fromJson(json['show_time']);
	}
	if (json['price'] != null) {
		data.price = GetPromotionDetailDataRecordPrice().fromJson(json['price']);
	}
	if (json['variants'] != null) {
		data.variants = (json['variants'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['attributes'] != null) {
		data.attributes = (json['attributes'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['images'] != null) {
		data.images = (json['images'] as List).map((v) => GetPromotionDetailDataRecordImages().fromJson(v)).toList();
	}
	if (json['remain'] != null) {
		data.remain = json['remain'] is String
				? int.tryParse(json['remain'])
				: json['remain'].toInt();
	}
	if (json['ticket_count'] != null) {
		data.ticketCount = json['ticket_count'] is String
				? int.tryParse(json['ticket_count'])
				: json['ticket_count'].toInt();
	}
	if (json['online_checkin'] != null) {
		data.onlineCheckin = json['online_checkin'];
	}
	if (json['viewed'] != null) {
		data.viewed = json['viewed'] is String
				? int.tryParse(json['viewed'])
				: json['viewed'].toInt();
	}
	if (json['viewed_text'] != null) {
		data.viewedText = json['viewed_text'] is String
				? int.tryParse(json['viewed_text'])
				: json['viewed_text'].toInt();
	}
	if (json['sales_url'] != null) {
		data.salesUrl = json['sales_url'];
	}
	if (json['share_url'] != null) {
		data.shareUrl = json['share_url'].toString();
	}
	if (json['webview_url'] != null) {
		data.webviewUrl = json['webview_url'].toString();
	}
	if (json['include_vat'] != null) {
		data.includeVat = json['include_vat'];
	}
	if (json['payment_charge'] != null) {
		data.paymentCharge = json['payment_charge'];
	}
	if (json['has_variant'] != null) {
		data.hasVariant = json['has_variant'];
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['ticket_shipping'] != null) {
		data.ticketShipping = json['ticket_shipping'];
	}
	if (json['publish_status'] != null) {
		data.publishStatus = GetPromotionDetailDataRecordPublishStatus().fromJson(json['publish_status']);
	}
	if (json['publish_at'] != null) {
		data.publishAt = json['publish_at'].toString();
	}
	if (json['remark'] != null) {
		data.remark = json['remark'];
	}
	if (json['soldout_status'] != null) {
		data.soldoutStatus = json['soldout_status'];
	}
	if (json['soldout_status_id'] != null) {
		data.soldoutStatusId = json['soldout_status_id'] is String
				? int.tryParse(json['soldout_status_id'])
				: json['soldout_status_id'].toInt();
	}
	if (json['sales_status'] != null) {
		data.salesStatus = json['sales_status'];
	}
	if (json['created_at'] != null) {
		data.createdAt = json['created_at'].toString();
	}
	if (json['updated_at'] != null) {
		data.updatedAt = json['updated_at'].toString();
	}
	if (json['updated'] != null) {
		data.updated = json['updated'];
	}
	if (json['verify'] != null) {
		data.verify = json['verify'];
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordToJson(GetPromotionDetailDataRecord entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['slug'] = entity.slug;
	data['type'] = entity.type;
	data['group_type'] = entity.groupType;
	data['parent_id'] = entity.parentId;
	data['name'] = entity.name;
	data['description_short'] = entity.descriptionShort;
	data['description'] = entity.description;
	data['store'] = entity.store?.toJson();
	data['venue'] = entity.venue?.toJson();
	data['show_time'] = entity.showTime?.toJson();
	data['price'] = entity.price?.toJson();
	data['variants'] = entity.variants;
	data['attributes'] = entity.attributes;
	data['images'] =  entity.images?.map((v) => v.toJson())?.toList();
	data['remain'] = entity.remain;
	data['ticket_count'] = entity.ticketCount;
	data['online_checkin'] = entity.onlineCheckin;
	data['viewed'] = entity.viewed;
	data['viewed_text'] = entity.viewedText;
	data['sales_url'] = entity.salesUrl;
	data['share_url'] = entity.shareUrl;
	data['webview_url'] = entity.webviewUrl;
	data['include_vat'] = entity.includeVat;
	data['payment_charge'] = entity.paymentCharge;
	data['has_variant'] = entity.hasVariant;
	data['status'] = entity.status;
	data['ticket_shipping'] = entity.ticketShipping;
	data['publish_status'] = entity.publishStatus?.toJson();
	data['publish_at'] = entity.publishAt;
	data['remark'] = entity.remark;
	data['soldout_status'] = entity.soldoutStatus;
	data['soldout_status_id'] = entity.soldoutStatusId;
	data['sales_status'] = entity.salesStatus;
	data['created_at'] = entity.createdAt;
	data['updated_at'] = entity.updatedAt;
	data['updated'] = entity.updated;
	data['verify'] = entity.verify;
	return data;
}

getPromotionDetailDataRecordStoreFromJson(GetPromotionDetailDataRecordStore data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['type'] != null) {
		data.type = GetPromotionDetailDataRecordStoreType().fromJson(json['type']);
	}
	if (json['section'] != null) {
		data.section = GetPromotionDetailDataRecordStoreSection().fromJson(json['section']);
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['image'] != null) {
		data.image = GetPromotionDetailDataRecordStoreImage().fromJson(json['image']);
	}
	if (json['venue'] != null) {
		data.venue = GetPromotionDetailDataRecordStoreVenue().fromJson(json['venue']);
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordStoreToJson(GetPromotionDetailDataRecordStore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['type'] = entity.type?.toJson();
	data['section'] = entity.section?.toJson();
	data['status'] = entity.status;
	data['image'] = entity.image?.toJson();
	data['venue'] = entity.venue?.toJson();
	return data;
}

getPromotionDetailDataRecordStoreTypeFromJson(GetPromotionDetailDataRecordStoreType data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordStoreTypeToJson(GetPromotionDetailDataRecordStoreType entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getPromotionDetailDataRecordStoreSectionFromJson(GetPromotionDetailDataRecordStoreSection data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordStoreSectionToJson(GetPromotionDetailDataRecordStoreSection entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getPromotionDetailDataRecordStoreImageFromJson(GetPromotionDetailDataRecordStoreImage data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordStoreImageToJson(GetPromotionDetailDataRecordStoreImage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

getPromotionDetailDataRecordStoreVenueFromJson(GetPromotionDetailDataRecordStoreVenue data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['lat'] != null) {
		data.lat = json['lat'] is String
				? double.tryParse(json['lat'])
				: json['lat'].toDouble();
	}
	if (json['long'] != null) {
		data.long = json['long'] is String
				? double.tryParse(json['long'])
				: json['long'].toDouble();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['address'] != null) {
		data.address = json['address'].toString();
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordStoreVenueToJson(GetPromotionDetailDataRecordStoreVenue entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['lat'] = entity.lat;
	data['long'] = entity.long;
	data['name'] = entity.name;
	data['address'] = entity.address;
	return data;
}

getPromotionDetailDataRecordVenueFromJson(GetPromotionDetailDataRecordVenue data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['lat'] != null) {
		data.lat = json['lat'] is String
				? double.tryParse(json['lat'])
				: json['lat'].toDouble();
	}
	if (json['long'] != null) {
		data.long = json['long'] is String
				? double.tryParse(json['long'])
				: json['long'].toDouble();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['address'] != null) {
		data.address = json['address'].toString();
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordVenueToJson(GetPromotionDetailDataRecordVenue entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['lat'] = entity.lat;
	data['long'] = entity.long;
	data['name'] = entity.name;
	data['address'] = entity.address;
	return data;
}

getPromotionDetailDataRecordShowTimeFromJson(GetPromotionDetailDataRecordShowTime data, Map<String, dynamic> json) {
	if (json['start'] != null) {
		data.start = json['start'].toString();
	}
	if (json['end'] != null) {
		data.end = json['end'].toString();
	}
	if (json['text_full'] != null) {
		data.textFull = json['text_full'].toString();
	}
	if (json['text_short'] != null) {
		data.textShort = json['text_short'].toString();
	}
	if (json['text_short_date'] != null) {
		data.textShortDate = json['text_short_date'].toString();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['status_text'] != null) {
		data.statusText = json['status_text'].toString();
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordShowTimeToJson(GetPromotionDetailDataRecordShowTime entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['start'] = entity.start;
	data['end'] = entity.end;
	data['text_full'] = entity.textFull;
	data['text_short'] = entity.textShort;
	data['text_short_date'] = entity.textShortDate;
	data['status'] = entity.status;
	data['status_text'] = entity.statusText;
	return data;
}

getPromotionDetailDataRecordPriceFromJson(GetPromotionDetailDataRecordPrice data, Map<String, dynamic> json) {
	if (json['currency_code'] != null) {
		data.currencyCode = json['currency_code'].toString();
	}
	if (json['currency_symbol'] != null) {
		data.currencySymbol = json['currency_symbol'].toString();
	}
	if (json['min'] != null) {
		data.min = json['min'] is String
				? int.tryParse(json['min'])
				: json['min'].toInt();
	}
	if (json['max'] != null) {
		data.max = json['max'] is String
				? int.tryParse(json['max'])
				: json['max'].toInt();
	}
	if (json['min_text'] != null) {
		data.minText = json['min_text'].toString();
	}
	if (json['max_text'] != null) {
		data.maxText = json['max_text'].toString();
	}
	if (json['compare_min'] != null) {
		data.compareMin = json['compare_min'] is String
				? int.tryParse(json['compare_min'])
				: json['compare_min'].toInt();
	}
	if (json['compare_max'] != null) {
		data.compareMax = json['compare_max'] is String
				? int.tryParse(json['compare_max'])
				: json['compare_max'].toInt();
	}
	if (json['compare_min_text'] != null) {
		data.compareMinText = json['compare_min_text'].toString();
	}
	if (json['compare_max_text'] != null) {
		data.compareMaxText = json['compare_max_text'].toString();
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordPriceToJson(GetPromotionDetailDataRecordPrice entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['currency_code'] = entity.currencyCode;
	data['currency_symbol'] = entity.currencySymbol;
	data['min'] = entity.min;
	data['max'] = entity.max;
	data['min_text'] = entity.minText;
	data['max_text'] = entity.maxText;
	data['compare_min'] = entity.compareMin;
	data['compare_max'] = entity.compareMax;
	data['compare_min_text'] = entity.compareMinText;
	data['compare_max_text'] = entity.compareMaxText;
	data['status'] = entity.status;
	return data;
}

getPromotionDetailDataRecordImagesFromJson(GetPromotionDetailDataRecordImages data, Map<String, dynamic> json) {
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

Map<String, dynamic> getPromotionDetailDataRecordImagesToJson(GetPromotionDetailDataRecordImages entity) {
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

getPromotionDetailDataRecordPublishStatusFromJson(GetPromotionDetailDataRecordPublishStatus data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> getPromotionDetailDataRecordPublishStatusToJson(GetPromotionDetailDataRecordPublishStatus entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getPromotionDetailBenchFromJson(GetPromotionDetailBench data, Map<String, dynamic> json) {
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

Map<String, dynamic> getPromotionDetailBenchToJson(GetPromotionDetailBench entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['second'] = entity.second;
	data['millisecond'] = entity.millisecond;
	data['format'] = entity.format;
	return data;
}