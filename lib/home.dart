import 'package:demoapp/core/base_state_ful.dart';
import 'package:demoapp/core/base_view_model.dart';
import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/errors/base_error_entity.dart';
import 'package:demoapp/model/concert.dart';
import 'package:demoapp/model/get_checkin_detail_entity.dart';
import 'package:demoapp/model/get_gallery_detail_entity.dart';
import 'package:demoapp/model/get_promotion_detail_entity.dart';
import 'package:demoapp/model/get_review_detail_entity.dart';
import 'package:demoapp/model/get_store_detail_entity.dart';
import 'package:demoapp/model/product.dart';
import 'package:demoapp/page_module/customDialog_screen.dart';
import 'package:demoapp/profile_screen.dart';
import 'package:demoapp/tab_menu_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tix_navigate/tix_navigate.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends BaseStateProvider<Home, HomeViewModel> {
  @override
  void initState() {
    super.initState();
    viewModel = HomeViewModel("5000090");
    viewModel.showAlertError = showAlertError;
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
        body: viewModel.noInternet == true ? Container(child: Center(
          child: Text('No Internet'),
        ),) : SingleChildScrollView(
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

  void showAlertError(BaseError baseError){
      if(showing == true) return;
      showing = true;

      showDialog(context: context, builder: (BuildContext context){
        return CustomDialog(
            title: 'เกิดข้อผิดพลาด',
            description: baseError.message,
            dangertextButton: 'ยกเลิก',
            textButton: 'ยืนยัน',
        );
      });

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
  List<Concert> concertList = [];
  List<Product> productList = [];

  Function(BaseError)? showAlertError;
  bool noInternet = false;

  @override
  void postInit() {
    super.postInit();
    getStoreDetail();
    getConcertDetail();
    getPromotionDetail();
    getProductDetail();
    getReviewDetail();
    getCheckIn();
    getGallery();

    //showAlertError!(BaseError()..message='กรุณาเชื่อมต่ออินเตอร์เน็ตเพื่อเปลี่ยนแปลงหรือดูข้อมูลล่าสุด');
  }
  
  void getStoreDetail() {
    catchError(() async {
      setLoading(true);
      storeDetail = await di.pageRepository.getStoreDetailById(storeId);
      bannerList.clear();
      bannerList.addAll(storeDetail?.images?.banner ?? []);
      notifyListeners();
      setLoading(false);
    });
  }
  void getConcertDetail(){
    catchError(()async {
      concertList.clear();
    });
  }
  void getPromotionDetail() {
    catchError(() async {
      setLoading(true);
      promotionDetail = await di.pageRepository.getPromotionDetailById(storeId);
      notifyListeners();
      setLoading(false);
    });
  }

  void getProductDetail(){
    catchError(()async{
      productList.clear();
    });
  }

  void getReviewDetail(){
    int limit = 3;
    catchError(()async {
      setLoading(true);
      reviewDetail = await di.pageRepository.getReviewById(storeId, limit);
      notifyListeners();
      setLoading(false);
    });
  }

  void getCheckIn(){
    catchError(()async{
      setLoading(true);
      checkinDetail = await di.pageRepository.getCheckinById(storeId);
      checkInList.clear();
      checkInList.addAll(checkinDetail?.record ?? []);
      notifyListeners();
      setLoading(false);
    });
  }

  void getGallery(){
    catchError(() async {
      setLoading(true);
      galleryDetail = await di.pageRepository.getGalleryById(storeId);
      galleryList.clear();
      galleryList.addAll(galleryDetail?.record ?? []);
      notifyListeners();
      setLoading(false);
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

  List<GetReviewDetailDataRecord>? reviewList(){
    var reviewList = reviewDetail?.record;
    return reviewList;
  }

  @override
  void onError(error) {
     super.onError(error);
     setLoading(false);
     if(error is BaseError){
       if(error.code == 0){
          SetNoInternet(true);
       }
       showAlertError!(error);
     }
  }

  void SetNoInternet(bool noInternet){
    this.noInternet = noInternet;
    notifyListeners();
  }
}
