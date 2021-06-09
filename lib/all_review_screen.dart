import 'package:demoapp/all_review_model.dart';
import 'package:demoapp/core/base_state_ful.dart';
import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tix_navigate/tix_navigate.dart';

class AllReview extends StatefulWidget with TixRoute {
  String storeId;
  AllReview(this.storeId);

  @override
  _AllReviewState createState() => _AllReviewState();

  @override
  String buildPath() {
    return '/all_review';
  }

  @override
  Route routeTo(data) {
    return MaterialPageRoute(builder: (builder) => AllReview("${data}"));
  }
}

class _AllReviewState extends BaseStateProvider<AllReview, AllReviewModel> {
  ScrollController homeScrollController = ScrollController();
  bool isFeedComplete = false;

  @override
  void initState() {
    super.initState();
    viewModel = AllReviewModel(widget.storeId);
    homeScrollController.addListener(() {
      if (homeScrollController.position.extentAfter == 0 && !isFeedComplete) {
      getFeed();
    }});
  }


  getFeed(){
    print('Feed Complete');

  }

  @override
  void dispose() {
    homeScrollController.removeListener(() { });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<AllReviewModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.red),
              title: new Text("รีวิวทั้งหมด",
                  style: TextStyle(
                    fontFamily: 'SukhumvitSet',
                    color: Color(0xff4a4a4a),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            body: RefreshIndicator(
              onRefresh: ()async{
                viewModel.clearPaging();
                viewModel.getReviewDetail();
              },
              child: Container(
                    margin: EdgeInsets.only(top: 17.5),
                      child: ListView.builder(
                        controller: homeScrollController,
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: viewModel.reviewDetail?.record?.length ?? 0,
                        itemBuilder: (context, index) {
                        var item = viewModel.reviewDetail?.record?[index];
                        return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: CircleAvatar(
                                      //child: Image.asset(reviews[index]["img"]),
                                      child: Image.network(
                                          '${item?.user?.image?.resizeUrl}'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      '${item?.user?.firstName}  ' +
                                          '${item?.user?.lastName}',
                                      style: TextStyle(
                                        fontFamily: 'SukhumvitSet',
                                        color: Color(0xff4a4a4a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: RatingBar.builder(
                                          initialRating:
                                              (item?.rating ?? 0.0).toDouble(),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20.0,
                                          itemPadding:
                                              EdgeInsets.only(right: 0.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Color(0xffda3534),
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: new Text(
                                          '${item?.createdAt?.date} ' +
                                              '${item?.createdAt?.time}',
                                          style: TextStyle(
                                            fontFamily: 'SukhumvitSet',
                                            color: Color(0xff4a4a4a),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 19.0,
                                  right: 45.0,
                                  top: 18.0,
                                  bottom: 14.0),
                              child: new Text(
                                '${item?.description}',
                                style: TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  color: Color(0xff555555),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 17.5),
                              width: 343,
                              height: 1,
                              decoration:
                                  new BoxDecoration(color: Colors.grey.shade300),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),

          );
        },
        model: viewModel);
  }
}


