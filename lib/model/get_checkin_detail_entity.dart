import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';

class GetCheckinDetailEntity with JsonConvert<GetCheckinDetailEntity> {
	GetCheckinDetailData? data;
	GetCheckinDetailBench? bench;
}

class GetCheckinDetailData with JsonConvert<GetCheckinDetailData> {
	GetCheckinDetailDataMeta? meta;
	GetCheckinDetailDataPagination? pagination;
	List<GetCheckinDetailDataRecord>? record;
	bool? cache;
}

class GetCheckinDetailDataMeta with JsonConvert<GetCheckinDetailDataMeta> {
	@JSONField(name: "checkin_total")
	int? checkinTotal;
	@JSONField(name: "user_total")
	int? userTotal;
}

class GetCheckinDetailDataPagination with JsonConvert<GetCheckinDetailDataPagination> {
	@JSONField(name: "current_page")
	int? currentPage;
	@JSONField(name: "last_page")
	int? lastPage;
	int? limit;
	int? total;
}

class GetCheckinDetailDataRecord with JsonConvert<GetCheckinDetailDataRecord> {
	int? id;
	GetCheckinDetailDataRecordUser? user;
	@JSONField(name: "created_at")
	GetCheckinDetailDataRecordCreatedAt? createdAt;
	@JSONField(name: "updated_at")
	GetCheckinDetailDataRecordUpdatedAt? updatedAt;
}

class GetCheckinDetailDataRecordUser with JsonConvert<GetCheckinDetailDataRecordUser> {
	int? id;
	String? username;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
	GetCheckinDetailDataRecordUserImage? image;
}

class GetCheckinDetailDataRecordUserImage with JsonConvert<GetCheckinDetailDataRecordUserImage> {
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

class GetCheckinDetailDataRecordCreatedAt with JsonConvert<GetCheckinDetailDataRecordCreatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetCheckinDetailDataRecordUpdatedAt with JsonConvert<GetCheckinDetailDataRecordUpdatedAt> {
	String? value;
	String? date;
	String? time;
}

class GetCheckinDetailBench with JsonConvert<GetCheckinDetailBench> {
	int? second;
	double? millisecond;
	String? format;
}
