import 'package:demoapp/core/base_state_ful.dart';
import 'package:demoapp/core/base_view_model.dart';
import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/errors/base_error_entity.dart';
import 'package:demoapp/model/get_checkin_detail_entity.dart';
import 'package:demoapp/model/get_gallery_detail_entity.dart';
import 'package:demoapp/model/get_promotion_detail_entity.dart';
import 'package:demoapp/model/get_review_detail_entity.dart';
import 'package:demoapp/model/get_store_detail_entity.dart';
import 'package:demoapp/profile_screen.dart';
import 'package:demoapp/tab_menu_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends BaseStateProvider<Home, HomeViewModel> {
  @override
  void initState() {
    super.initState();
    viewModel = HomeViewModel("5000090");
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(builder: (context, model, child){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.red, //change your color here
          ),
          title: Text(
            viewModel.storeDetail?.name ?? '',
            style: TextStyle(
              fontFamily: 'SukhumvitSet',
              color: Color(0xff4a4a4a),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.all(17.0),
              icon: Image.asset('images/arrow.jpg'),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
                Profile(viewModel),
                TabMenu(viewModel),
            ],
          ),
        ),
      );
    }, model: viewModel);
    
  }
}

class HomeViewModel extends BaseViewModel{
  String storeId;
  GetStoreDetailData? storeDetail;
  GetPromotionDetailData? promotionDetail;
  GetReviewDetailData? reviewDetail;
  GetCheckinDetailData? checkinDetail;
  GetGalleryDetailData? galleryDetail;
  
  HomeViewModel(this.storeId);

  List<GetCheckinDetailDataRecord> checkInList = [];
  List<GetGalleryDetailDataRecord> galleryList = [];
  List<GetStoreDetailDataImagesBanner> bannerList = [];

  @override
  void postInit() {
    super.postInit();
    getStoreDetail();
    getPromotionDetail();
    getReviewDetail();
    getCheckIn();
    getGallery();
  }
  
  void getStoreDetail() {
    catchError(() async {
      storeDetail = await di.pageRepository.getStoreDetailById(storeId);
      bannerList.clear();
      bannerList.addAll(storeDetail?.images?.banner ?? []);
      notifyListeners();
      
    });
  }
  void getPromotionDetail() {
    catchError(() async {
      promotionDetail = await di.pageRepository.getPromotionDetailById(storeId);
      notifyListeners();
    });
  }
  void getReviewDetail(){
    catchError(()async {
      reviewDetail = await di.pageRepository.getReviewById(storeId);
      notifyListeners();
    });
  }

  void getCheckIn(){
    catchError(()async{
      checkinDetail = await di.pageRepository.getCheckinById(storeId);
      checkInList.clear();
      checkInList.addAll(checkinDetail?.record ?? []);
      notifyListeners();
    });
  }

  void getGallery(){
    catchError(() async {
      galleryDetail = await di.pageRepository.getGalleryById(storeId);
      galleryList.clear();
      galleryList.addAll(galleryDetail?.record ?? []);
      notifyListeners();
    });
  }

  String? genreList(){
    try{
      String attributes = '';
      var genre = storeDetail?.attributes?.firstWhere((element){
        return element.code == "genre";
      });

      var genreList = genre?.items?.map((e){
        return e.name;
      }).toList();
      attributes = genreList!.join(", ");
      return attributes;
    }catch(e){
      return null;
    }
  }

  reviewList(){
    var reviewList = reviewDetail?.record;
    return reviewList;
  }

  @override
  void onError(error) {
     super.onError(error);
  }
}
