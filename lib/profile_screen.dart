import 'package:carousel_slider/carousel_slider.dart';
import 'package:demoapp/core/base_state_ful.dart';
import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/home.dart';
import 'package:demoapp/model/get_store_detail_entity.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  Profile(this.viewModel);
  HomeViewModel viewModel;
  @override
  _ProfileState createState() => _ProfileState(this.viewModel);
}

class _ProfileState extends BaseStateProvider<Profile,HomeViewModel> {
  _ProfileState(this.viewModel);
  HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
     return BaseWidget(builder: (context, model, child){
    //   return CarouselSlider(
    //             options: CarouselOptions(
    //             height: 400.0,
    //             viewportFraction: 1,
    //       ),
    //                   //items: viewModel.storeDetail?.images?.banner?.map((i) {
    //                   items: viewModel.bannerList.map((element) {
    //                     return Builder(
    //                       builder: (BuildContext context) {
    //                         final index = viewModel.bannerList.indexOf(element);
    //                         return BannerWidget(data: element, index: index);
    //                       },
    //                     );
    //                   }).toList(),
    //
    //   );
      return Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 375,
                  height: 211,
                  decoration: BoxDecoration(),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 400.0,
                      viewportFraction: 1,
                    ),
                    items: viewModel.storeDetail?.images?.banner?.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: 375.0,
                              margin: EdgeInsets.symmetric(horizontal: 0.0),
                              decoration: BoxDecoration(
                                  color: Colors.amber
                              ),
                              child: Image.network('${i.url}',fit: BoxFit.cover,),
                          );

                        },
                      );
                    }).toList(),
                  )
                ),
                Positioned(
                  bottom: 16.0,
                  right: 16.0,
                  child: new Text(
                    "1/${viewModel.storeDetail?.images?.banner?.length}",
                    style: TextStyle(
                      fontFamily: 'SFUIText',
                      color: Color(0xffffffff),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.only(
                    top: 16.0, bottom: 16.0, right: 16.0, left: 16.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.grey.shade300)
                    )
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 16.0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(),
                        child: CircleAvatar(
                          radius: 50.0,
                          //backgroundImage: AssetImage("images/shop.jpg"),
                          backgroundImage: NetworkImage('${viewModel.storeDetail?.images?.logo?.url}'),
                        ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${viewModel.storeDetail?.name}',
                                  style: TextStyle(
                                    fontFamily: 'SukhumvitSet',
                                    color: Color(0xff08080a),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                              Text("1.1 กม.",
                                  style: TextStyle(
                                    fontFamily: 'SukhumvitSet',
                                    color: Color(0xff555555),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              new Text(
                                "${viewModel.storeDetail?.section?.text}",
                                style: TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  color: Color(0xff6d6d6d),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              new Container(
                                height: 20,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffda3534),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      padding: EdgeInsets.only(
                                          left: 6.0, right: 6.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5.0),
                                            child: Icon(
                                              Icons.star,
                                              size: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text('${viewModel.storeDetail?.averageRating?.toDouble()}',
                                            style: TextStyle(
                                              fontFamily: 'SukhumvitSet',
                                              color: Color(0xffffffff),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Text("${viewModel.storeDetail?.reviewTotal} รีวิว",
                                                style: TextStyle(
                                                  fontFamily:
                                                  'SukhumvitSet',
                                                  color: Color(0xff08080a),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                )),
                                            Icon(Icons.keyboard_arrow_right),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      );
    }, model: viewModel);
  }
}

class BannerWidget extends StatelessWidget{
  final GetStoreDetailDataImagesBanner data;
  final int index;

  const BannerWidget({Key? key, required this.data, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child:Stack(
      //       children: [
      //         Container(
      //           width: 375,
      //           height: 211,
      //           decoration: BoxDecoration(),
      //           child: CarouselSlider(
      //             options: CarouselOptions(
      //               height: 400.0,
      //               viewportFraction: 1,
      //             ),
      //             items: data.url?.map((i) {
      //               return Builder(
      //                 builder: (BuildContext context) {
      //                   return Container(
      //                       width: 375.0,
      //                       margin: EdgeInsets.symmetric(horizontal: 0.0),
      //                       decoration: BoxDecoration(
      //                           color: Colors.amber
      //                       ),
      //                       child: Image.network('${i.url}',fit: BoxFit.cover,),
      //                   );
      //
      //                 },
      //               );
      //             }).toList(),
      //           )
      //         ),
      //         Positioned(
      //           bottom: 16.0,
      //           right: 16.0,
      //           child: new Text(
      //             "1/${viewModel.storeDetail?.images?.banner?.length}",
      //             style: TextStyle(
      //               fontFamily: 'SFUIText',
      //               color: Color(0xffffffff),
      //               fontSize: 12,
      //               fontWeight: FontWeight.w400,
      //               fontStyle: FontStyle.normal,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
    );

  }
}
