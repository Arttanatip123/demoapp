import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class GetPromotionDetailEntity with JsonConvert<GetPromotionDetailEntity> {
	GetPromotionDetailData? data;
	GetPromotionDetailBench? bench;
}

class GetPromotionDetailData with JsonConvert<GetPromotionDetailData> {
	GetPromotionDetailDataPagination? pagination;
	List<GetPromotionDetailDataRecord>? record;
	bool? cache;
}

class GetPromotionDetailDataPagination with JsonConvert<GetPromotionDetailDataPagination> {
	@JSONField(name: "current_page")
	int? currentPage;
	@JSONField(name: "last_page")
	int? lastPage;
	int? limit;
	int? total;
}

class GetPromotionDetailDataRecord with JsonConvert<GetPromotionDetailDataRecord> {
	int? id;
	dynamic? slug;
	String? type;
	@JSONField(name: "group_type")
	String? groupType;
	@JSONField(name: "parent_id")
	int? parentId;
	String? name;
	@JSONField(name: "description_short")
	String? descriptionShort;
	String? description;
	GetPromotionDetailDataRecordStore? store;
	GetPromotionDetailDataRecordVenue? venue;
	@JSONField(name: "show_time")
	GetPromotionDetailDataRecordShowTime? showTime;
	GetPromotionDetailDataRecordPrice? price;
	List<dynamic>? variants;
	List<dynamic>? attributes;
	List<GetPromotionDetailDataRecordImages>? images;
	int? remain;
	@JSONField(name: "ticket_count")
	int? ticketCount;
	@JSONField(name: "online_checkin")
	bool? onlineCheckin;
	int? viewed;
	@JSONField(name: "viewed_text")
	int? viewedText;
	@JSONField(name: "sales_url")
	dynamic? salesUrl;
	@JSONField(name: "share_url")
	String? shareUrl;
	@JSONField(name: "webview_url")
	String? webviewUrl;
	@JSONField(name: "include_vat")
	bool? includeVat;
	@JSONField(name: "payment_charge")
	bool? paymentCharge;
	@JSONField(name: "has_variant")
	bool? hasVariant;
	bool? status;
	@JSONField(name: "ticket_shipping")
	bool? ticketShipping;
	@JSONField(name: "publish_status")
	GetPromotionDetailDataRecordPublishStatus? publishStatus;
	@JSONField(name: "publish_at")
	String? publishAt;
	dynamic? remark;
	@JSONField(name: "soldout_status")
	bool? soldoutStatus;
	@JSONField(name: "soldout_status_id")
	int? soldoutStatusId;
	@JSONField(name: "sales_status")
	bool? salesStatus;
	@JSONField(name: "created_at")
	String? createdAt;
	@JSONField(name: "updated_at")
	String? updatedAt;
	bool? updated;
	bool? verify;
}

class GetPromotionDetailDataRecordStore with JsonConvert<GetPromotionDetailDataRecordStore> {
	int? id;
	String? name;
	String? slug;
	GetPromotionDetailDataRecordStoreType? type;
	GetPromotionDetailDataRecordStoreSection? section;
	bool? status;
	GetPromotionDetailDataRecordStoreImage? image;
	GetPromotionDetailDataRecordStoreVenue? venue;
}

class GetPromotionDetailDataRecordStoreType with JsonConvert<GetPromotionDetailDataRecordStoreType> {
	int? id;
	String? text;
}

class GetPromotionDetailDataRecordStoreSection with JsonConvert<GetPromotionDetailDataRecordStoreSection> {
	int? id;
	String? text;
}

class GetPromotionDetailDataRecordStoreImage with JsonConvert<GetPromotionDetailDataRecordStoreImage> {

}

class GetPromotionDetailDataRecordStoreVenue with JsonConvert<GetPromotionDetailDataRecordStoreVenue> {
	int? id;
	double? lat;
	double? long;
	String? name;
	String? address;
}

class GetPromotionDetailDataRecordVenue with JsonConvert<GetPromotionDetailDataRecordVenue> {
	int? id;
	double? lat;
	double? long;
	String? name;
	String? address;
}

class GetPromotionDetailDataRecordShowTime with JsonConvert<GetPromotionDetailDataRecordShowTime> {
	String? start;
	String? end;
	@JSONField(name: "text_full")
	String? textFull;
	@JSONField(name: "text_short")
	String? textShort;
	@JSONField(name: "text_short_date")
	String? textShortDate;
	int? status;
	@JSONField(name: "status_text")
	String? statusText;
}

class GetPromotionDetailDataRecordPrice with JsonConvert<GetPromotionDetailDataRecordPrice> {
	@JSONField(name: "currency_code")
	String? currencyCode;
	@JSONField(name: "currency_symbol")
	String? currencySymbol;
	int? min;
	int? max;
	@JSONField(name: "min_text")
	String? minText;
	@JSONField(name: "max_text")
	String? maxText;
	@JSONField(name: "compare_min")
	int? compareMin;
	@JSONField(name: "compare_max")
	int? compareMax;
	@JSONField(name: "compare_min_text")
	String? compareMinText;
	@JSONField(name: "compare_max_text")
	String? compareMaxText;
	bool? status;
}

class GetPromotionDetailDataRecordImages with JsonConvert<GetPromotionDetailDataRecordImages> {
	String? id;
	@JSONField(name: "store_id")
	int? storeId;
	String? tag;
	@JSONField(name: "album_id")
	int? albumId;
	String? name;
	int? width;
	int? height;
	String? mime;
	int? size;
	String? url;
	int? position;
}

class GetPromotionDetailDataRecordPublishStatus with JsonConvert<GetPromotionDetailDataRecordPublishStatus> {
	int? id;
	String? text;
}

class GetPromotionDetailBench with JsonConvert<GetPromotionDetailBench> {
	int? second;
	double? millisecond;
	String? format;
}
