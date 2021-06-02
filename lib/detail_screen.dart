import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.red, //change your color here
        ),
        title: Text(
          "The plant Cafe & Restaurant",
          style: TextStyle(
            fontFamily: 'SukhumvitSet',
            color: Color(0xff4a4a4a),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.all(17.0),
            icon: Image.asset('images/arrow.jpg'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
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
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0, right: 16.0),
              child: ListTile(
                leading: Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/shop.jpg"),
                  )
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Text("The Plant Cafe & Restaurant",
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
                subtitle: Column(
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
                      width: 50,
                      height: 20,
                      decoration: new BoxDecoration(
                          color: Color(0xffda3534),
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 5.0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("3.1",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      color: Color(0xffffffff),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    ),
                                ),
                                SizedBox(width: 130,),
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Row(
                                    children: [
                                      Text("11 รีวิว",
                                          style: TextStyle(
                                            fontFamily: 'SukhumvitSet-Text',
                                            color: Color(0xff08080a),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          )
                                      ),
                                      Icon(Icons.keyboard_arrow_right),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: 4,
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: TabBar(
                      labelColor: Color(0xffda3534),
                      indicatorColor: Color(0xffda3534),
                      unselectedLabelColor: Color(0xff6d6d6d),
                      tabs: [
                        Tab(
                          child: Text('หน้าหลัก'),
                        ),
                        Tab(
                          child: Text('คอนเสิร์ต'),
                        ),
                        Tab(
                          child: Text('โปรโมชัน'),
                        ),
                        Tab(
                          child: Text('สินค้า'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5),
                          bottom: BorderSide(color: Colors.grey, width: 0.5)),
                    ),
                    child: TabBarView(
                      children: [
                        Container(
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
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.5, bottom: 8.5),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
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
                                          child: Icon(
                                              Icons.keyboard_arrow_down_outlined),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                shape: Border(
                                  top: BorderSide(color: Colors.grey.shade300, width: 1),
                                  bottom: BorderSide(color: Colors.grey.shade300, width: 3),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('คอนเสิร์ต'),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('โปรโมชัน'),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('สินค้า'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
