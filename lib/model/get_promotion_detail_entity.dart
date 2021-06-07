import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class GetPromotionDetailEntity with JsonConvert<GetPromotionDetailEntity> {
	GetPromotionDetailEntityData? data;
	GetPromotionDetailEntityBench? bench;
}

class GetPromotionDetailEntityData with JsonConvert<GetPromotionDetailEntityData> {
	GetPromotionDetailEntityDataPagination? pagination;
	List<GetPromotionDetailEntityDataRecord>? record;
	bool? cache;
}

class GetPromotionDetailEntityDataPagination with JsonConvert<GetPromotionDetailEntityDataPagination> {
	@JSONField(name: "current_page")
	int? currentPage;
	@JSONField(name: "last_page")
	int? lastPage;
	int? limit;
	int? total;
}

class GetPromotionDetailEntityDataRecord with JsonConvert<GetPromotionDetailEntityDataRecord> {
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
	GetPromotionDetailEntityDataRecordStore? store;
	GetPromotionDetailEntityDataRecordVenue? venue;
	@JSONField(name: "show_time")
	GetPromotionDetailEntityDataRecordShowTime? showTime;
	GetPromotionDetailEntityDataRecordPrice? price;
	List<dynamic>? variants;
	List<dynamic>? attributes;
	List<GetPromotionDetailEntityDataRecordImages>? images;
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
	GetPromotionDetailEntityDataRecordPublishStatus? publishStatus;
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

class GetPromotionDetailEntityDataRecordStore with JsonConvert<GetPromotionDetailEntityDataRecordStore> {
	int? id;
	String? name;
	String? slug;
	GetPromotionDetailEntityDataRecordStoreType? type;
	GetPromotionDetailEntityDataRecordStoreSection? section;
	bool? status;
	GetPromotionDetailEntityDataRecordStoreImage? image;
	GetPromotionDetailEntityDataRecordStoreVenue? venue;
}

class GetPromotionDetailEntityDataRecordStoreType with JsonConvert<GetPromotionDetailEntityDataRecordStoreType> {
	int? id;
	String? text;
}

class GetPromotionDetailEntityDataRecordStoreSection with JsonConvert<GetPromotionDetailEntityDataRecordStoreSection> {
	int? id;
	String? text;
}

class GetPromotionDetailEntityDataRecordStoreImage with JsonConvert<GetPromotionDetailEntityDataRecordStoreImage> {

}

class GetPromotionDetailEntityDataRecordStoreVenue with JsonConvert<GetPromotionDetailEntityDataRecordStoreVenue> {
	int? id;
	double? lat;
	double? long;
	String? name;
	String? address;
}

class GetPromotionDetailEntityDataRecordVenue with JsonConvert<GetPromotionDetailEntityDataRecordVenue> {
	int? id;
	double? lat;
	double? long;
	String? name;
	String? address;
}

class GetPromotionDetailEntityDataRecordShowTime with JsonConvert<GetPromotionDetailEntityDataRecordShowTime> {
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

class GetPromotionDetailEntityDataRecordPrice with JsonConvert<GetPromotionDetailEntityDataRecordPrice> {
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

class GetPromotionDetailEntityDataRecordImages with JsonConvert<GetPromotionDetailEntityDataRecordImages> {
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

class GetPromotionDetailEntityDataRecordPublishStatus with JsonConvert<GetPromotionDetailEntityDataRecordPublishStatus> {
	int? id;
	String? text;
}

class GetPromotionDetailEntityBench with JsonConvert<GetPromotionDetailEntityBench> {
	int? second;
	double? millisecond;
	String? format;
}
