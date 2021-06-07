import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class GetGalleryDetailEntity with JsonConvert<GetGalleryDetailEntity> {
	GetGalleryDetailData? data;
	GetGalleryDetailBench? bench;
}

class GetGalleryDetailData with JsonConvert<GetGalleryDetailData> {
	GetGalleryDetailDataPagination? pagination;
	List<GetGalleryDetailDataRecord>? record;
	bool? cache;
}

class GetGalleryDetailDataPagination with JsonConvert<GetGalleryDetailDataPagination> {
	@JSONField(name: "current_page")
	int? currentPage;
	@JSONField(name: "last_page")
	int? lastPage;
	int? limit;
	int? total;
}

class GetGalleryDetailDataRecord with JsonConvert<GetGalleryDetailDataRecord> {
	int? id;
	String? description;
	GetGalleryDetailDataRecordUser? user;
	GetGalleryDetailDataRecordImage? image;
	@JSONField(name: "created_at")
	GetGalleryDetailDataRecordCreatedAt? createdAt;
	@JSONField(name: "updated_at")
	GetGalleryDetailDataRecordUpdatedAt? updatedAt;
}

class GetGalleryDetailDataRecordUser with JsonConvert<GetGalleryDetailDataRecordUser> {
	int? id;
	String? username;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
}

class GetGalleryDetailDataRecordImage with JsonConvert<GetGalleryDetailDataRecordImage> {
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

class GetGalleryDetailDataRecordCreatedAt with JsonConvert<GetGalleryDetailDataRecordCreatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetGalleryDetailDataRecordUpdatedAt with JsonConvert<GetGalleryDetailDataRecordUpdatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetGalleryDetailBench with JsonConvert<GetGalleryDetailBench> {
	int? second;
	double? millisecond;
	String? format;
}
