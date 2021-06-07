import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class GetReviewDetailEntity with JsonConvert<GetReviewDetailEntity> {
	GetReviewDetailData? data;
	GetReviewDetailBench? bench;
}

class GetReviewDetailData with JsonConvert<GetReviewDetailData> {
	GetReviewDetailDataPagination? pagination;
	List<GetReviewDetailDataRecord>? record;
	bool? cache;
}

class GetReviewDetailDataPagination with JsonConvert<GetReviewDetailDataPagination> {
	@JSONField(name: "current_page")
	int? currentPage;
	@JSONField(name: "last_page")
	int? lastPage;
	int? limit;
	int? total;
}

class GetReviewDetailDataRecord with JsonConvert<GetReviewDetailDataRecord> {
	int? id;
	String? description;
	GetReviewDetailDataRecordUser? user;
	GetReviewDetailDataRecordStore? store;
	int? rating;
	List<GetReviewDetailDataRecordImages>? images;
	dynamic? remark;
	@JSONField(name: "created_at")
	GetReviewDetailDataRecordCreatedAt? createdAt;
	@JSONField(name: "updated_at")
	GetReviewDetailDataRecordUpdatedAt? updatedAt;
}

class GetReviewDetailDataRecordUser with JsonConvert<GetReviewDetailDataRecordUser> {
	int? id;
	String? username;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
	GetReviewDetailDataRecordUserImage? image;
}

class GetReviewDetailDataRecordUserImage with JsonConvert<GetReviewDetailDataRecordUserImage> {
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

class GetReviewDetailDataRecordStore with JsonConvert<GetReviewDetailDataRecordStore> {
	int? id;
	String? name;
}

class GetReviewDetailDataRecordImages with JsonConvert<GetReviewDetailDataRecordImages> {
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

class GetReviewDetailDataRecordCreatedAt with JsonConvert<GetReviewDetailDataRecordCreatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetReviewDetailDataRecordUpdatedAt with JsonConvert<GetReviewDetailDataRecordUpdatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetReviewDetailBench with JsonConvert<GetReviewDetailBench> {
	int? second;
	double? millisecond;
	String? format;
}
