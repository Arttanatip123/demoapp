import 'package:flutter/material.dart';

DetailMainScreen() {
  return Container(
    child: Column(
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
        ListTile(
          leading: Icon(Icons.access_time_outlined),
          title: Align(
            alignment: Alignment(-1.2,0),
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
            alignment: Alignment(-1.3,0),
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
          leading: Icon(Icons.access_time_outlined),
          title: Align(
            alignment: Alignment(-1.2,0),
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
            alignment: Alignment(-1.3,0),
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
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
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
                  child: Icon(
                      Icons.keyboard_arrow_down_outlined),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}