import 'package:demoapp/api/core_api.dart';
import 'package:demoapp/errors/base_error_entity.dart';
import 'package:demoapp/model/get_checkin_detail_entity.dart';
import 'package:demoapp/model/get_gallery_detail_entity.dart';
import 'package:demoapp/model/get_promotion_detail_entity.dart';
import 'package:demoapp/model/get_review_detail_entity.dart';
import 'package:demoapp/model/get_store_detail_entity.dart';
import 'package:demoapp/model/promotion.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class PageApi{
  final String pathStores = "/stores";
  final CoreApi api;

  PageApi(this.api);

  //TODO Get Store detail
  //TODO https://alpha-api.theconcert.com/stores/5000090
  Future<GetStoreDetailEntity> getStoresDetailById(String storeId) async{
    Response response =
    await api.get(pathStores + '/$storeId', {"is_open":"true"} , BaseErrorEntity.badRequestToModelError, hasPermission: false, headers: {"Accept-Language":"th"});
    return GetStoreDetailEntity().fromJson(response.data);
  }

  //TODO Get Promotion detail
  Future<GetPromotionDetailEntity> getPromotionDetailById(String storeId) async{
    Response response =
    await api.get('/products?type=voucher&store_id=5000090', {"is_open":"true"} , BaseErrorEntity.badRequestToModelError, hasPermission: false, headers: {"Accept-Language":"th"});
    return GetPromotionDetailEntity().fromJson(response.data);
  }

  //TODO Get review detail
  Future<GetReviewDetailEntity> getReviewById(String storeId, int limit) async{
    Response response =
    await api.get('/stores/5000090/reviews?limit=${limit.toString()}&page=1', {"is_open":"true"} , BaseErrorEntity.badRequestToModelError, hasPermission: false, headers: {"Accept-Language":"th"});
    return GetReviewDetailEntity().fromJson(response.data);
  }


  Future<GetCheckinDetailEntity> getCheckinById(String storeId) async {
    Response response =
    await api.get('/stores/5000090/checkins/users?limit=8&page=1', {"is_open":"true"} , BaseErrorEntity.badRequestToModelError, hasPermission: false, headers: {"Accept-Language":"th"});
    return GetCheckinDetailEntity().fromJson(response.data);
  }

  Future<GetGalleryDetailEntity> getGalleryById(String storeId) async {
    Response response =
    await api.get('/stores/5000090/gallery?limit=3&page=0', {"is_open":"true"} , BaseErrorEntity.badRequestToModelError, hasPermission: false, headers: {"Accept-Language":"th"});
    return GetGalleryDetailEntity().fromJson(response.data);
  }

}