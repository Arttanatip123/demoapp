import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 15.5, right: 44.0),
            child: Text(
              'เราให้ความบันเทิงทุกรูปแบบที่คุณต้องการ คอนเสิร์ตทุกวันศุกร์เสาร์และอาทิตย์ไม่ซ้ำรูปแบบติดต่อได้ตลอด 24 ชม.',
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
                      ": 26/2 ถนน คลองลำเจียก แขวง นวมินทร์  เขต บึงกุ่ม กรุงเทพมหานคร 10240",
                      style: TextStyle(
                        fontFamily: 'SukhumvitSet-Text',
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
                'จันทร์ - เสาร์, 17:00 - 22:00',
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
                '02-623-1210, 086-040-9971',
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
          FlatButton(
            onPressed: null,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.5, bottom: 8.5),
              child: Center(
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Text(
                      "ข้อมูลเพิ่มเติม",
                      style: TextStyle(
                        fontFamily: 'SukhumvitSet',
                        color: Color(0xff08080a),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 5.0),
                      child: Icon(Icons
                          .keyboard_arrow_down_outlined),
                    )
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
        ],
      ),
    );
  }
}
