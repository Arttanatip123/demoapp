import 'package:demoapp/model/get_store_detail_entity.dart';

getStoreDetailEntityFromJson(GetStoreDetailEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = GetStoreDetailData().fromJson(json['data']);
	}
	if (json['bench'] != null) {
		data.bench = GetStoreDetailBench().fromJson(json['bench']);
	}
	return data;
}

Map<String, dynamic> getStoreDetailEntityToJson(GetStoreDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data?.toJson();
	data['bench'] = entity.bench?.toJson();
	return data;
}

getStoreDetailDataFromJson(GetStoreDetailData data, Map<String, dynamic> json) {
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
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['type'] != null) {
		data.type = GetStoreDetailDataType().fromJson(json['type']);
	}
	if (json['section'] != null) {
		data.section = GetStoreDetailDataSection().fromJson(json['section']);
	}
	if (json['contact'] != null) {
		data.contact = GetStoreDetailDataContact().fromJson(json['contact']);
	}
	if (json['corporate'] != null) {
		data.corporate = GetStoreDetailDataCorporate().fromJson(json['corporate']);
	}
	if (json['billing'] != null) {
		data.billing = GetStoreDetailDataBilling().fromJson(json['billing']);
	}
	if (json['accept_terms'] != null) {
		data.acceptTerms = json['accept_terms'];
	}
	if (json['document_status'] != null) {
		data.documentStatus = GetStoreDetailDataDocumentStatus().fromJson(json['document_status']);
	}
	if (json['payment_status'] != null) {
		data.paymentStatus = GetStoreDetailDataPaymentStatus().fromJson(json['payment_status']);
	}
	if (json['publish_status'] != null) {
		data.publishStatus = GetStoreDetailDataPublishStatus().fromJson(json['publish_status']);
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['created_at'] != null) {
		data.createdAt = GetStoreDetailDataCreatedAt().fromJson(json['created_at']);
	}
	if (json['updated_at'] != null) {
		data.updatedAt = GetStoreDetailDataUpdatedAt().fromJson(json['updated_at']);
	}
	if (json['published_at'] != null) {
		data.publishedAt = GetStoreDetailDataPublishedAt().fromJson(json['published_at']);
	}
	if (json['settings'] != null) {
		data.settings = (json['settings'] as List).map((v) => GetStoreDetailDataSettings().fromJson(v)).toList();
	}
	if (json['images'] != null) {
		data.images = GetStoreDetailDataImages().fromJson(json['images']);
	}
	if (json['connects'] != null) {
		data.connects = (json['connects'] as List).map((v) => GetStoreDetailDataConnects().fromJson(v)).toList();
	}
	if (json['staff'] != null) {
		data.staff = GetStoreDetailDataStaff().fromJson(json['staff']);
	}
	if (json['venue'] != null) {
		data.venue = GetStoreDetailDataVenue().fromJson(json['venue']);
	}
	if (json['attributes'] != null) {
		data.attributes = (json['attributes'] as List).map((v) => GetStoreDetailDataAttributes().fromJson(v)).toList();
	}
	if (json['times'] != null) {
		data.times = (json['times'] as List).map((v) => GetStoreDetailDataTimes().fromJson(v)).toList();
	}
	if (json['times_display'] != null) {
		data.timesDisplay = (json['times_display'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['time_open'] != null) {
		data.timeOpen = GetStoreDetailDataTimeOpen().fromJson(json['time_open']);
	}
	if (json['remark'] != null) {
		data.remark = json['remark'];
	}
	if (json['updated'] != null) {
		data.updated = json['updated'];
	}
	if (json['accept_fee'] != null) {
		data.acceptFee = json['accept_fee'];
	}
	if (json['accept_fee_at'] != null) {
		data.acceptFeeAt = GetStoreDetailDataAcceptFeeAt().fromJson(json['accept_fee_at']);
	}
	if (json['average_rating'] != null) {
		data.averageRating = json['average_rating'] is String
				? int.tryParse(json['average_rating'])
				: json['average_rating'].toInt();
	}
	if (json['review_total'] != null) {
		data.reviewTotal = json['review_total'] is String
				? int.tryParse(json['review_total'])
				: json['review_total'].toInt();
	}
	if (json['parking'] != null) {
		data.parking = GetStoreDetailDataParking().fromJson(json['parking']);
	}
	if (json['seats'] != null) {
		data.seats = GetStoreDetailDataSeats().fromJson(json['seats']);
	}
	if (json['cache'] != null) {
		data.cache = json['cache'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataToJson(GetStoreDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['description'] = entity.description;
	data['type'] = entity.type?.toJson();
	data['section'] = entity.section?.toJson();
	data['contact'] = entity.contact?.toJson();
	data['corporate'] = entity.corporate?.toJson();
	data['billing'] = entity.billing?.toJson();
	data['accept_terms'] = entity.acceptTerms;
	data['document_status'] = entity.documentStatus?.toJson();
	data['payment_status'] = entity.paymentStatus?.toJson();
	data['publish_status'] = entity.publishStatus?.toJson();
	data['status'] = entity.status;
	data['created_at'] = entity.createdAt?.toJson();
	data['updated_at'] = entity.updatedAt?.toJson();
	data['published_at'] = entity.publishedAt?.toJson();
	data['settings'] =  entity.settings?.map((v) => v.toJson())?.toList();
	data['images'] = entity.images?.toJson();
	data['connects'] =  entity.connects?.map((v) => v.toJson())?.toList();
	data['staff'] = entity.staff?.toJson();
	data['venue'] = entity.venue?.toJson();
	data['attributes'] =  entity.attributes?.map((v) => v.toJson())?.toList();
	data['times'] =  entity.times?.map((v) => v.toJson())?.toList();
	data['times_display'] = entity.timesDisplay;
	data['time_open'] = entity.timeOpen?.toJson();
	data['remark'] = entity.remark;
	data['updated'] = entity.updated;
	data['accept_fee'] = entity.acceptFee;
	data['accept_fee_at'] = entity.acceptFeeAt?.toJson();
	data['average_rating'] = entity.averageRating;
	data['review_total'] = entity.reviewTotal;
	data['parking'] = entity.parking?.toJson();
	data['seats'] = entity.seats?.toJson();
	data['cache'] = entity.cache;
	return data;
}

getStoreDetailDataTypeFromJson(GetStoreDetailDataType data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataTypeToJson(GetStoreDetailDataType entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataSectionFromJson(GetStoreDetailDataSection data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataSectionToJson(GetStoreDetailDataSection entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataContactFromJson(GetStoreDetailDataContact data, Map<String, dynamic> json) {
	if (json['first_name'] != null) {
		data.firstName = json['first_name'];
	}
	if (json['last_name'] != null) {
		data.lastName = json['last_name'];
	}
	if (json['citizen_id'] != null) {
		data.citizenId = json['citizen_id'];
	}
	if (json['phone'] != null) {
		data.phone = json['phone'].toString();
	}
	if (json['country_code'] != null) {
		data.countryCode = json['country_code'].toString();
	}
	if (json['phone_option'] != null) {
		data.phoneOption = (json['phone_option'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataContactToJson(GetStoreDetailDataContact entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	data['citizen_id'] = entity.citizenId;
	data['phone'] = entity.phone;
	data['country_code'] = entity.countryCode;
	data['phone_option'] = entity.phoneOption;
	data['email'] = entity.email;
	return data;
}

getStoreDetailDataCorporateFromJson(GetStoreDetailDataCorporate data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'];
	}
	if (json['branch'] != null) {
		data.branch = json['branch'];
	}
	if (json['phone'] != null) {
		data.phone = json['phone'];
	}
	if (json['tax_id'] != null) {
		data.taxId = json['tax_id'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataCorporateToJson(GetStoreDetailDataCorporate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['branch'] = entity.branch;
	data['phone'] = entity.phone;
	data['tax_id'] = entity.taxId;
	return data;
}

getStoreDetailDataBillingFromJson(GetStoreDetailDataBilling data, Map<String, dynamic> json) {
	if (json['address'] != null) {
		data.address = json['address'];
	}
	if (json['district'] != null) {
		data.district = json['district'];
	}
	if (json['city'] != null) {
		data.city = json['city'];
	}
	if (json['province'] != null) {
		data.province = json['province'];
	}
	if (json['country'] != null) {
		data.country = json['country'];
	}
	if (json['zipcode'] != null) {
		data.zipcode = json['zipcode'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataBillingToJson(GetStoreDetailDataBilling entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['address'] = entity.address;
	data['district'] = entity.district;
	data['city'] = entity.city;
	data['province'] = entity.province;
	data['country'] = entity.country;
	data['zipcode'] = entity.zipcode;
	return data;
}

getStoreDetailDataDocumentStatusFromJson(GetStoreDetailDataDocumentStatus data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataDocumentStatusToJson(GetStoreDetailDataDocumentStatus entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataPaymentStatusFromJson(GetStoreDetailDataPaymentStatus data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataPaymentStatusToJson(GetStoreDetailDataPaymentStatus entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataPublishStatusFromJson(GetStoreDetailDataPublishStatus data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataPublishStatusToJson(GetStoreDetailDataPublishStatus entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataCreatedAtFromJson(GetStoreDetailDataCreatedAt data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataCreatedAtToJson(GetStoreDetailDataCreatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getStoreDetailDataUpdatedAtFromJson(GetStoreDetailDataUpdatedAt data, Map<String, dynamic> json) {
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['date'] != null) {
		data.date = json['date'].toString();
	}
	if (json['time'] != null) {
		data.time = json['time'].toString();
	}
	if (json['value_utc'] != null) {
		data.valueUtc = json['value_utc'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataUpdatedAtToJson(GetStoreDetailDataUpdatedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	data['value_utc'] = entity.valueUtc;
	return data;
}

getStoreDetailDataPublishedAtFromJson(GetStoreDetailDataPublishedAt data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> getStoreDetailDataPublishedAtToJson(GetStoreDetailDataPublishedAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

getStoreDetailDataSettingsFromJson(GetStoreDetailDataSettings data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['code'] != null) {
		data.code = json['code'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['value'] != null) {
		data.value = GetStoreDetailDataSettingsValue().fromJson(json['value']);
	}
	if (json['serialize'] != null) {
		data.serialize = json['serialize'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataSettingsToJson(GetStoreDetailDataSettings entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['code'] = entity.code;
	data['key'] = entity.key;
	data['value'] = entity.value?.toJson();
	data['serialize'] = entity.serialize;
	return data;
}

getStoreDetailDataSettingsValueFromJson(GetStoreDetailDataSettingsValue data, Map<String, dynamic> json) {
	if (json['website'] != null) {
		data.website = json['website'].toString();
	}
	if (json['facebook'] != null) {
		data.facebook = json['facebook'].toString();
	}
	if (json['twitter'] != null) {
		data.twitter = json['twitter'].toString();
	}
	if (json['line'] != null) {
		data.line = json['line'].toString();
	}
	if (json['instagram'] != null) {
		data.instagram = json['instagram'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataSettingsValueToJson(GetStoreDetailDataSettingsValue entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['website'] = entity.website;
	data['facebook'] = entity.facebook;
	data['twitter'] = entity.twitter;
	data['line'] = entity.line;
	data['instagram'] = entity.instagram;
	return data;
}

getStoreDetailDataImagesFromJson(GetStoreDetailDataImages data, Map<String, dynamic> json) {
	if (json['logo'] != null) {
		data.logo = GetStoreDetailDataImagesLogo().fromJson(json['logo']);
	}
	if (json['banner'] != null) {
		data.banner = (json['banner'] as List).map((v) => GetStoreDetailDataImagesBanner().fromJson(v)).toList();
	}
	if (json['corporate_logo'] != null) {
		data.corporateLogo = json['corporate_logo'];
	}
	if (json['signature'] != null) {
		data.signature = json['signature'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataImagesToJson(GetStoreDetailDataImages entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['logo'] = entity.logo?.toJson();
	data['banner'] =  entity.banner?.map((v) => v.toJson())?.toList();
	data['corporate_logo'] = entity.corporateLogo;
	data['signature'] = entity.signature;
	return data;
}

getStoreDetailDataImagesLogoFromJson(GetStoreDetailDataImagesLogo data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'].toString();
	}
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
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
	return data;
}

Map<String, dynamic> getStoreDetailDataImagesLogoToJson(GetStoreDetailDataImagesLogo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['position'] = entity.position;
	data['tag'] = entity.tag;
	data['album_id'] = entity.albumId;
	data['name'] = entity.name;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['mime'] = entity.mime;
	data['size'] = entity.size;
	data['url'] = entity.url;
	return data;
}

getStoreDetailDataImagesBannerFromJson(GetStoreDetailDataImagesBanner data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'].toString();
	}
	if (json['position'] != null) {
		data.position = json['position'] is String
				? int.tryParse(json['position'])
				: json['position'].toInt();
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
	return data;
}

Map<String, dynamic> getStoreDetailDataImagesBannerToJson(GetStoreDetailDataImagesBanner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['position'] = entity.position;
	data['tag'] = entity.tag;
	data['album_id'] = entity.albumId;
	data['name'] = entity.name;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['mime'] = entity.mime;
	data['size'] = entity.size;
	data['url'] = entity.url;
	return data;
}

getStoreDetailDataConnectsFromJson(GetStoreDetailDataConnects data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['username'] != null) {
		data.username = json['username'].toString();
	}
	if (json['country_code'] != null) {
		data.countryCode = json['country_code'].toString();
	}
	if (json['first_name'] != null) {
		data.firstName = json['first_name'].toString();
	}
	if (json['last_name'] != null) {
		data.lastName = json['last_name'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataConnectsToJson(GetStoreDetailDataConnects entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['country_code'] = entity.countryCode;
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	return data;
}

getStoreDetailDataStaffFromJson(GetStoreDetailDataStaff data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['username'] != null) {
		data.username = json['username'].toString();
	}
	if (json['phone'] != null) {
		data.phone = json['phone'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataStaffToJson(GetStoreDetailDataStaff entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['phone'] = entity.phone;
	return data;
}

getStoreDetailDataVenueFromJson(GetStoreDetailDataVenue data, Map<String, dynamic> json) {
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
	if (json['country'] != null) {
		data.country = GetStoreDetailDataVenueCountry().fromJson(json['country']);
	}
	if (json['province'] != null) {
		data.province = GetStoreDetailDataVenueProvince().fromJson(json['province']);
	}
	if (json['city'] != null) {
		data.city = GetStoreDetailDataVenueCity().fromJson(json['city']);
	}
	if (json['district'] != null) {
		data.district = GetStoreDetailDataVenueDistrict().fromJson(json['district']);
	}
	if (json['zip_code'] != null) {
		data.zipCode = json['zip_code'] is String
				? int.tryParse(json['zip_code'])
				: json['zip_code'].toInt();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataVenueToJson(GetStoreDetailDataVenue entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['lat'] = entity.lat;
	data['long'] = entity.long;
	data['name'] = entity.name;
	data['address'] = entity.address;
	data['country'] = entity.country?.toJson();
	data['province'] = entity.province?.toJson();
	data['city'] = entity.city?.toJson();
	data['district'] = entity.district?.toJson();
	data['zip_code'] = entity.zipCode;
	return data;
}

getStoreDetailDataVenueCountryFromJson(GetStoreDetailDataVenueCountry data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataVenueCountryToJson(GetStoreDetailDataVenueCountry entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

getStoreDetailDataVenueProvinceFromJson(GetStoreDetailDataVenueProvince data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataVenueProvinceToJson(GetStoreDetailDataVenueProvince entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

getStoreDetailDataVenueCityFromJson(GetStoreDetailDataVenueCity data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataVenueCityToJson(GetStoreDetailDataVenueCity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

getStoreDetailDataVenueDistrictFromJson(GetStoreDetailDataVenueDistrict data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataVenueDistrictToJson(GetStoreDetailDataVenueDistrict entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

getStoreDetailDataAttributesFromJson(GetStoreDetailDataAttributes data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['code'] != null) {
		data.code = json['code'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['items'] != null) {
		data.items = (json['items'] as List).map((v) => GetStoreDetailDataAttributesItems().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataAttributesToJson(GetStoreDetailDataAttributes entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['code'] = entity.code;
	data['name'] = entity.name;
	data['items'] =  entity.items?.map((v) => v.toJson())?.toList();
	return data;
}

getStoreDetailDataAttributesItemsFromJson(GetStoreDetailDataAttributesItems data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataAttributesItemsToJson(GetStoreDetailDataAttributesItems entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['value'] = entity.value;
	return data;
}

getStoreDetailDataTimesFromJson(GetStoreDetailDataTimes data, Map<String, dynamic> json) {
	if (json['day'] != null) {
		data.day = json['day'] is String
				? int.tryParse(json['day'])
				: json['day'].toInt();
	}
	if (json['day_text'] != null) {
		data.dayText = json['day_text'].toString();
	}
	if (json['open'] != null) {
		data.open = json['open'].toString();
	}
	if (json['close'] != null) {
		data.close = json['close'].toString();
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataTimesToJson(GetStoreDetailDataTimes entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['day'] = entity.day;
	data['day_text'] = entity.dayText;
	data['open'] = entity.open;
	data['close'] = entity.close;
	data['status'] = entity.status;
	return data;
}

getStoreDetailDataTimeOpenFromJson(GetStoreDetailDataTimeOpen data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataTimeOpenToJson(GetStoreDetailDataTimeOpen entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataAcceptFeeAtFromJson(GetStoreDetailDataAcceptFeeAt data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailDataAcceptFeeAtToJson(GetStoreDetailDataAcceptFeeAt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['date'] = entity.date;
	data['time'] = entity.time;
	return data;
}

getStoreDetailDataParkingFromJson(GetStoreDetailDataParking data, Map<String, dynamic> json) {
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataParkingToJson(GetStoreDetailDataParking entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['total'] = entity.total;
	data['text'] = entity.text;
	return data;
}

getStoreDetailDataSeatsFromJson(GetStoreDetailDataSeats data, Map<String, dynamic> json) {
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
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> getStoreDetailDataSeatsToJson(GetStoreDetailDataSeats entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['min'] = entity.min;
	data['max'] = entity.max;
	data['text'] = entity.text;
	return data;
}

getStoreDetailBenchFromJson(GetStoreDetailBench data, Map<String, dynamic> json) {
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

Map<String, dynamic> getStoreDetailBenchToJson(GetStoreDetailBench entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['second'] = entity.second;
	data['millisecond'] = entity.millisecond;
	data['format'] = entity.format;
	return data;
}