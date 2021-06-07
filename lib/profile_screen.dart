import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 375,
                height: 211,
                decoration: BoxDecoration(),
                child: Image.asset(
                  'images/restaurant.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: 16.0,
                right: 16.0,
                child: new Text(
                  "1/10",
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
                        backgroundImage: AssetImage("images/shop.jpg"),
                      )),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "The Plant Cafe & Restaurant",
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
                              "ผับ/บาร์",
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
                                        Text(
                                          "3.1",
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
                                          Text("11 รีวิว",
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
  }
}
