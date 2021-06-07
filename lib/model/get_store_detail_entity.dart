import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class GetStoreDetailEntity with JsonConvert<GetStoreDetailEntity> {
	GetStoreDetailData? data;
	GetStoreDetailBench? bench;
}

class GetStoreDetailData with JsonConvert<GetStoreDetailData> {
	int? id;
	String? name;
	String? slug;
	String? description;
	GetStoreDetailDataType? type;
	GetStoreDetailDataSection? section;
	GetStoreDetailDataContact? contact;
	GetStoreDetailDataCorporate? corporate;
	GetStoreDetailDataBilling? billing;
	@JSONField(name: "accept_terms")
	bool? acceptTerms;
	@JSONField(name: "document_status")
	GetStoreDetailDataDocumentStatus? documentStatus;
	@JSONField(name: "payment_status")
	GetStoreDetailDataPaymentStatus? paymentStatus;
	@JSONField(name: "publish_status")
	GetStoreDetailDataPublishStatus? publishStatus;
	bool? status;
	@JSONField(name: "created_at")
	GetStoreDetailDataCreatedAt? createdAt;
	@JSONField(name: "updated_at")
	GetStoreDetailDataUpdatedAt? updatedAt;
	@JSONField(name: "published_at")
	GetStoreDetailDataPublishedAt? publishedAt;
	List<GetStoreDetailDataSettings>? settings;
	GetStoreDetailDataImages? images;
	List<GetStoreDetailDataConnects>? connects;
	GetStoreDetailDataStaff? staff;
	GetStoreDetailDataVenue? venue;
	List<GetStoreDetailDataAttributes>? attributes;
	List<GetStoreDetailDataTimes>? times;
	@JSONField(name: "times_display")
	List<String>? timesDisplay;
	@JSONField(name: "time_open")
	GetStoreDetailDataTimeOpen? timeOpen;
	dynamic? remark;
	bool? updated;
	@JSONField(name: "accept_fee")
	bool? acceptFee;
	@JSONField(name: "accept_fee_at")
	GetStoreDetailDataAcceptFeeAt? acceptFeeAt;
	@JSONField(name: "average_rating")
	int? averageRating;
	@JSONField(name: "review_total")
	int? reviewTotal;
	GetStoreDetailDataParking? parking;
	GetStoreDetailDataSeats? seats;
	bool? cache;
}

class GetStoreDetailDataType with JsonConvert<GetStoreDetailDataType> {
	int? id;
	String? text;
}

class GetStoreDetailDataSection with JsonConvert<GetStoreDetailDataSection> {
	int? id;
	String? text;
}

class GetStoreDetailDataContact with JsonConvert<GetStoreDetailDataContact> {
	@JSONField(name: "first_name")
	dynamic? firstName;
	@JSONField(name: "last_name")
	dynamic? lastName;
	@JSONField(name: "citizen_id")
	dynamic? citizenId;
	String? phone;
	@JSONField(name: "country_code")
	String? countryCode;
	@JSONField(name: "phone_option")
	List<dynamic>? phoneOption;
	String? email;
}

class GetStoreDetailDataCorporate with JsonConvert<GetStoreDetailDataCorporate> {
	dynamic? name;
	dynamic? branch;
	dynamic? phone;
	@JSONField(name: "tax_id")
	dynamic? taxId;
}

class GetStoreDetailDataBilling with JsonConvert<GetStoreDetailDataBilling> {
	dynamic? address;
	dynamic? district;
	dynamic? city;
	dynamic? province;
	dynamic? country;
	dynamic? zipcode;
}

class GetStoreDetailDataDocumentStatus with JsonConvert<GetStoreDetailDataDocumentStatus> {
	int? id;
	String? text;
}

class GetStoreDetailDataPaymentStatus with JsonConvert<GetStoreDetailDataPaymentStatus> {
	int? id;
	String? text;
}

class GetStoreDetailDataPublishStatus with JsonConvert<GetStoreDetailDataPublishStatus> {
	int? id;
	String? text;
}

class GetStoreDetailDataCreatedAt with JsonConvert<GetStoreDetailDataCreatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetStoreDetailDataUpdatedAt with JsonConvert<GetStoreDetailDataUpdatedAt> {
	String? value;
	String? date;
	String? time;
	@JSONField(name: "value_utc")
	String? valueUtc;
}

class GetStoreDetailDataPublishedAt with JsonConvert<GetStoreDetailDataPublishedAt> {

}

class GetStoreDetailDataSettings with JsonConvert<GetStoreDetailDataSettings> {
	int? id;
	String? code;
	String? key;
	GetStoreDetailDataSettingsValue? value;
	bool? serialize;
}

class GetStoreDetailDataSettingsValue with JsonConvert<GetStoreDetailDataSettingsValue> {
	String? website;
	String? facebook;
	String? twitter;
	String? line;
	String? instagram;
}

class GetStoreDetailDataImages with JsonConvert<GetStoreDetailDataImages> {
	GetStoreDetailDataImagesLogo? logo;
	List<GetStoreDetailDataImagesBanner>? banner;
	@JSONField(name: "corporate_logo")
	dynamic? corporateLogo;
	dynamic? signature;
}

class GetStoreDetailDataImagesLogo with JsonConvert<GetStoreDetailDataImagesLogo> {
	String? id;
	int? position;
	String? tag;
	@JSONField(name: "album_id")
	int? albumId;
	String? name;
	int? width;
	int? height;
	String? mime;
	int? size;
	String? url;
}

class GetStoreDetailDataImagesBanner with JsonConvert<GetStoreDetailDataImagesBanner> {
	String? id;
	int? position;
	String? tag;
	@JSONField(name: "album_id")
	int? albumId;
	String? name;
	int? width;
	int? height;
	String? mime;
	int? size;
	String? url;
}

class GetStoreDetailDataConnects with JsonConvert<GetStoreDetailDataConnects> {
	int? id;
	String? username;
	@JSONField(name: "country_code")
	String? countryCode;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
}

class GetStoreDetailDataStaff with JsonConvert<GetStoreDetailDataStaff> {
	int? id;
	String? username;
	dynamic? phone;
}

class GetStoreDetailDataVenue with JsonConvert<GetStoreDetailDataVenue> {
	int? id;
	double? lat;
	double? long;
	String? name;
	String? address;
	GetStoreDetailDataVenueCountry? country;
	GetStoreDetailDataVenueProvince? province;
	GetStoreDetailDataVenueCity? city;
	GetStoreDetailDataVenueDistrict? district;
	@JSONField(name: "zip_code")
	int? zipCode;
}

class GetStoreDetailDataVenueCountry with JsonConvert<GetStoreDetailDataVenueCountry> {
	int? id;
	String? name;
}

class GetStoreDetailDataVenueProvince with JsonConvert<GetStoreDetailDataVenueProvince> {
	int? id;
	String? name;
}

class GetStoreDetailDataVenueCity with JsonConvert<GetStoreDetailDataVenueCity> {
	int? id;
	String? name;
}

class GetStoreDetailDataVenueDistrict with JsonConvert<GetStoreDetailDataVenueDistrict> {
	int? id;
	String? name;
}

class GetStoreDetailDataAttributes with JsonConvert<GetStoreDetailDataAttributes> {
	int? id;
	String? code;
	String? name;
	List<GetStoreDetailDataAttributesItems>? items;
}

class GetStoreDetailDataAttributesItems with JsonConvert<GetStoreDetailDataAttributesItems> {
	int? id;
	String? name;
	dynamic? value;
}

class GetStoreDetailDataTimes with JsonConvert<GetStoreDetailDataTimes> {
	int? day;
	@JSONField(name: "day_text")
	String? dayText;
	String? open;
	String? close;
	bool? status;
}

class GetStoreDetailDataTimeOpen with JsonConvert<GetStoreDetailDataTimeOpen> {
	bool? status;
	String? text;
}

class GetStoreDetailDataAcceptFeeAt with JsonConvert<GetStoreDetailDataAcceptFeeAt> {
	String? value;
	String? date;
	String? time;
}

class GetStoreDetailDataParking with JsonConvert<GetStoreDetailDataParking> {
	int? total;
	String? text;
}

class GetStoreDetailDataSeats with JsonConvert<GetStoreDetailDataSeats> {
	int? min;
	int? max;
	String? text;
}

class GetStoreDetailBench with JsonConvert<GetStoreDetailBench> {
	int? second;
	double? millisecond;
	String? format;
}
