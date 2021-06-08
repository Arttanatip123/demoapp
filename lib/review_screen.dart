import 'package:demoapp/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget {
  HomeViewModel viewModel;
  Review(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 3.0, color: Colors.grey.shade300)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.5, left: 16.0),
                  child: Text("คะแนนรีวิว",
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Color(0xff08080a),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                    ),
                ),
                Row(                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Text("${viewModel.storeDetail?.averageRating?.toDouble()}",
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff08080a),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: RatingBar.builder(
                            initialRating: (viewModel.storeDetail?.averageRating ?? 0).toDouble(),
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 24.0,
                          itemPadding: EdgeInsets.only(right: 0.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        child: Row(
                          children: [
                            new Text(
                              "ดูทั้งหมด",
                              style: TextStyle(
                                fontFamily: 'SukhumvitSet',
                                color: Color(0xff08080a),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 3.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 67.0, bottom: 12.5),
                  child: new Text("${viewModel.storeDetail?.reviewTotal} " + "รีวิว",
                      style: TextStyle(
                        fontFamily: 'SukhumvitSet',
                        color: Color(0xff08080a),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                  ),
                ),
                Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: viewModel.reviewDetail?.record?.length ?? 0,
                      itemBuilder: (context, index){
                        var item = viewModel.reviewDetail?.record?[index];
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 17.5),
                                  width: 343,
                                  height: 1,
                                  decoration: new BoxDecoration(
                                      color: Colors.grey.shade300
                                  ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 16.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),
                                        child: CircleAvatar(
                                          //child: Image.asset(reviews[index]["img"]),
                                          child: Image.network('${item?.user?.image?.url}'),
                                        ),
                                      ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 12.0),
                                      child: Text('${item?.user?.firstName}  ' + '${item?.user?.lastName}',
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
                                        initialRating: (item?.rating ?? 0.0).toDouble(),
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 20.0,
                                        itemPadding: EdgeInsets.only(right: 0.0),
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
                                            '${item?.createdAt?.date} ' + '${item?.createdAt?.time}',
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
                                padding: EdgeInsets.only(left: 19.0, right: 45.0, top: 18.0, bottom: 14.0),
                                child: new Text('${item?.description}',
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
                              )
                            ],
                          ),
                        );
                      }
                  ),
                )
              ],
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: null,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 9.5, bottom: 8,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        "ดูรีวิวทั้งหมด",
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Color(0xff08080a),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 13.0, top: 3.0),
                        child: Icon(Icons
                            .arrow_forward_ios, size: 10.0,),
                      ),
                    ],
                  ),
                ),
              ),
              shape: Border(
                top: BorderSide(
                    color: Colors.grey.shade300, width: 1),
                bottom: BorderSide(
                    color: Colors.grey.shade300, width: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
