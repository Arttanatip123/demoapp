import 'package:demoapp/core/base_view_model.dart';
import 'package:demoapp/model/get_review_detail_entity.dart';

class AllReviewModel extends BaseViewModel{
  String storeId;
  AllReviewModel(this.storeId);
  GetReviewDetailData? reviewDetail;

  int feedPage = 1;
  bool isComplete = false;
  int followPage = 1;
  int suggestionPage = 1;
  bool isFeedComplete = false;

  @override
  void postInit() {
    super.postInit();
    getReviewDetail();
  }

  void getReviewDetail(){
    int limit = 10;
    catchError(() async{
      reviewDetail = await di.pageRepository.getReviewById(storeId, limit);
    });
  }

  void clearPaging(){
     feedPage = 1;
     isComplete = false;
     followPage = 1;
     suggestionPage = 1;
     isFeedComplete = false;
  }


  @override
  void onError(error) {
    super.onError(error);
  }

}