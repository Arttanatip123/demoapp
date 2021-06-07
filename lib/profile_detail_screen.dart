import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/home.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  HomeViewModel viewModel;
  ProfileDetail(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, model, child){
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 15.5, right: 44.0),
              child: Text(
                '${viewModel.storeDetail!.description}',
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
            ListTile(
              leading: Icon(
                Icons.access_time_outlined,
                color: Colors.black,
              ),
              title: Align(
                alignment: Alignment(-1.2, 0),
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
              subtitle: Align(
                alignment: Alignment(-1.3, 0),
                child: Text(
                  "${viewModel.storeDetail?.timesDisplay}",
                  style: TextStyle(
                    fontFamily: 'SukhumvitSet',
                    color: Color(0xff555555),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              title: Align(
                alignment: Alignment(-1.2, 0),
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
              subtitle: Align(
                alignment: Alignment(-1.3, 0),
                child: Text(
                  viewModel.storeDetail!.contact!.phone.toString(),
                  style: TextStyle(
                    fontFamily: 'SukhumvitSet',
                    color: Color(0xff555555),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }, model: viewModel);

  }
}
