import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  HomeViewModel viewModel;
  ProfileDetail(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 3.0, color: Colors.grey.shade300)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 15.5, right: 44.0),
              child: Text(
                '${viewModel.storeDetail?.description}',
                style: TextStyle(
                    fontFamily: 'SukhumvitSet',
                    fontSize: 14.0,
                    color: Color(0xff08080a),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.0, top: 12.0, right: 70.0),
              child: RichText(
                  text: new TextSpan(children: [
                    new TextSpan(
                        text: "ที่ตั้ง ",
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        )),
                    new TextSpan(
                        text:
                        ": ${viewModel.storeDetail?.venue?.address}",
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Color(0xff555555),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ])),
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.access_time_outlined,
            //     color: Colors.black,
            //   ),
            //   title: Align(
            //     alignment: Alignment(-1.2, 0),
            //     child: Text(
            //       'เวลาทำการ',
            //       style: TextStyle(
            //         fontFamily: 'SukhumvitSet',
            //         color: Color(0xff333333),
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500,
            //         fontStyle: FontStyle.normal,
            //         letterSpacing: -0.5,
            //       ),
            //     ),
            //   ),
            //   subtitle: Align(
            //     alignment: Alignment(-1.3, 0),
            //     child: Text(
            //       "${viewModel.storeDetail?.timesDisplay}",
            //       style: TextStyle(
            //         fontFamily: 'SukhumvitSet',
            //         color: Color(0xff555555),
            //         fontSize: 14,
            //         fontWeight: FontWeight.w400,
            //         fontStyle: FontStyle.normal,
            //         letterSpacing: -0.5,
            //       ),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   leading: Icon(
            //     Icons.phone,
            //     color: Colors.black,
            //   ),
            //   title: Align(
            //     alignment: Alignment(-1.2, 0),
            //     child: Text(
            //       'เบอร์โทรศัพท์',
            //       style: TextStyle(
            //         fontFamily: 'SukhumvitSet',
            //         color: Color(0xff333333),
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500,
            //         fontStyle: FontStyle.normal,
            //         letterSpacing: -0.5,
            //       ),
            //     ),
            //   ),
            //   subtitle: Align(
            //     alignment: Alignment(-1.2, 0),
            //     child: Text(
            //       viewModel.storeDetail!.contact!.phone.toString(),
            //       style: TextStyle(
            //         fontFamily: 'SukhumvitSet',
            //         color: Color(0xff555555),
            //         fontSize: 14,
            //         fontWeight: FontWeight.w400,
            //         fontStyle: FontStyle.normal,
            //         letterSpacing: -0.5,
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(bottom: 8.0, top: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 16.0, right: 9.0),
                    child: Icon(Icons.access_time_rounded),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'เวลาทำการ',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${viewModel.storeDetail?.timesDisplay?.first}',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only( bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 16.0, right: 9.0),
                    child: Icon(Icons.phone),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'เบอร์โทรศัพท์',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${viewModel.storeDetail?.contact?.phone}',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
            viewModel.genreList() != null ? Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 16.0, right: 9.0),
                    child: Icon(Icons.music_note_outlined),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'แนวเพลง',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          viewModel.genreList() ?? '',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ) : SizedBox(),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 16.0, right: 9.0),
                    child: Icon(Icons.directions_car_outlined),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'ที่จอดรถ',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${viewModel.storeDetail?.parking?.text}',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 16.0, right: 9.0),
                    child: Icon(Icons.person_outline),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'จำนวนที่นั่ง',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${viewModel.storeDetail?.seats?.text}',
                          style: TextStyle(
                            fontFamily: 'SukhumvitSet',
                            color: Color(0xff333333),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );


  }
}
