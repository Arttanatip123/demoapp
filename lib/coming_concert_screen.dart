import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ComingConcert extends StatelessWidget {
  final List soon = [
    {
      "id": 1,
      "date_begin": 30,
      "date_end": 2,
      "month_begin": "มีนาคม",
      "month_end": "เมษายน",
      "year": 1,
      "topic":
      "OISUS ASIA TOUR LIVE IN BANGKOK 2020 WHAT THE STORY EVENING GLORY",
      "img": "images/concert1.jpg",
    },
    {
      "id": 2,
      "date_begin": 5,
      "date_end": 8,
      "month_begin": "เมษายน",
      "month_end": "เมษายน",
      "year": 2022,
      "topic": "คอนเสิร์ตเฉลิมฉลองวันเกิดหลานภารโรง ณ โรงเรียนบ้านกกไม้แดง",
      "img": "images/concert2.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 19.5),
                  child: new Text(
                    "คอนเสิร์ตที่กำลังมาถึง",
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
          Container(
            height: 140.0 * soon.length,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 3.0)),
            ),
            child: ListView.builder(
              itemCount: soon.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: 16.0, bottom: 16.0, right: 7.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16.0),
                        width: 90.0,
                        height: 120.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            '${soon[index]["img"]}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 1.0),
                                        child: Icon(Icons.calendar_today, size: 12.0, color: Colors.grey.shade600,
                                        ),
                                    ),
                                    SizedBox(width: 5.0,),
                                    new Text("${soon[index]["date_begin"]} ${soon[index]["month_begin"]} - ${soon[index]["date_end"]} ${soon[index]["month_end"]} ${soon[index]["year"]}",
                                        style: TextStyle(
                                          fontFamily: 'SukhumvitSet-Text',
                                          color: Color(0xff676767),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.2333333333333333,

                                        )
                                    )
                                  ],
                                )
                              ),
                              Container(
                                padding:
                                EdgeInsets.only(right: 7.0),
                                child: Text(
                                  '${soon[index]["topic"]}',
                                  style: TextStyle(
                                    fontFamily: 'SukhumvitSet',
                                    color: Color(0xff000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
