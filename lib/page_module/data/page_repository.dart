import 'package:demoapp/core/base_repository.dart';
import 'package:demoapp/model/get_checkin_detail_entity.dart';
import 'package:demoapp/model/get_gallery_detail_entity.dart';
import 'package:demoapp/model/get_promotion_detail_entity.dart';
import 'package:demoapp/model/get_review_detail_entity.dart';
import 'package:demoapp/model/get_store_detail_entity.dart';
import 'package:demoapp/page_module/data/page_api.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class PageRepository extends BaseRepository{
  final PageApi api;
  GetStoreDetailEntity? storeDetail;
  GetPromotionDetailEntity? promotionDetail;
  GetReviewDetailEntity? reviewDetail;
  GetCheckinDetailEntity? checkinDetail;
  GetGalleryDetailEntity? galleryDetail;

  PageRepository(this.api);

  Future<GetStoreDetailData?> getStoreDetailById(String storeId) async{
    final result = await api.getStoresDetailById(storeId);
    storeDetail = result;
    return result.data;
  }

  Future<GetPromotionDetailData?> getPromotionDetailById(String storeId) async{
    final result = await api.getPromotionDetailById(storeId);
    promotionDetail = result;
    return result.data;
  }

  Future<GetReviewDetailData?> getReviewById(String storeId) async {
    final result = await api.getReviewById(storeId);
    reviewDetail = result;
    return result.data;
  }

  Future<GetCheckinDetailData?> getCheckinById(String storeId) async {
    final result = await api.getCheckinById(storeId);
    checkinDetail = result;
    return result.data;
  }

  Future<GetGalleryDetailData?> getGalleryById(String storeId) async {
    final result =  await api.getGalleryById(storeId);
    galleryDetail = result;
    return result.data;
  }
}