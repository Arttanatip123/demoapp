import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/home.dart';
import 'package:demoapp/model/get_promotion_detail_entity.dart';
import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  HomeViewModel viewModel;
  Promotion(this.viewModel);



  final List promotion = [
    {
      "id": 1,
      "img": "images/concert3.jpg",
      "name": "กกกอก เฟสติวัลครั้งที่ 1",
      "artists": "BodySlam",
      "date": "20 ก.ค. 64",
      "price": 250,
    },
    {
      "id": 2,
      "img": "images/concert4.jpg",
      "name": "กกกอก เฟสติวัลครั้งที่ 2",
      "artists": "Linking Park",
      "date": "5 ส.ค. 64",
      "price": 400,
    },
    {
      "id": 3,
      "img": "images/concert5.jpg",
      "name": "กกกอก เฟสติวัลครั้งที่ 3",
      "artists": "Justin Bieber",
      "date": "16 ก.ย. 64",
      "price": 350,
    },
  ];
  @override
  Widget build(BuildContext context) {

    return BaseWidget(builder: (context, model, child){
      return Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 19.5),
                      child: new Text(
                        "โปรโมชัน",
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Color(0xff333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.5714285714285714,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 15.5, right: 16.0),
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GridView.builder(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 19.5),
                itemCount: promotion.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 164 / 277,
                ),
                itemBuilder:
                    (BuildContext context, int index) {
                  return Container(
                    decoration: new BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius:
                      BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x26000000),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 164.0,
                          width: 164.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(3.0),
                              topRight: Radius.circular(3.0),
                            ),
                            child: Image.asset(
                              '${promotion[index]["img"]}',fit: BoxFit.fill,),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            top: 8.0,
                            right: 11.0,
                          ),
                          child: Text(
                            "${promotion[index]["name"]}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'SukhumvitSet',
                                color: Color(0xff120e0e),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                height: 1.1),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.0,),
                          child: Text(
                            "${promotion[index]["artists"]}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'SukhumvitSet',
                              color: Color(0xff989898),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(
                                  left: 9.0),
                              child: new Text(
                                "${promotion[index]["date"]}",
                                style: TextStyle(
                                  fontFamily:
                                  'SukhumvitSet',
                                  color: Color(0xff808080),
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.w400,
                                  fontStyle:
                                  FontStyle.normal,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(
                                  right: 11.0),
                              child: new Text("฿${promotion[index]["price"]}",
                                  style: TextStyle(
                                    fontFamily: 'SFProText',
                                    color:
                                    Color(0xff08080a),
                                    fontSize: 16,
                                    fontWeight:
                                    FontWeight.w700,
                                    fontStyle:
                                    FontStyle.normal,
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      );
    }, model: viewModel);

  }
}
