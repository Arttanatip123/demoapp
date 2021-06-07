import 'package:demoapp/check_in_screen.dart';
import 'package:demoapp/coming_concert_screen.dart';
import 'package:demoapp/core/base_widget.dart';
import 'package:demoapp/home.dart';
import 'package:demoapp/image_review_screen.dart';
import 'package:demoapp/product_screen.dart';
import 'package:demoapp/profile_detail_screen.dart';
import 'package:demoapp/promotion_screen.dart';
import 'package:demoapp/review_screen.dart';
import 'package:flutter/material.dart';
class TapMenu extends StatefulWidget {
  HomeViewModel viewModel;
  TapMenu(this.viewModel);

  @override
  _TapMenuState createState() => _TapMenuState(this.viewModel);
}

class _TapMenuState extends State<TapMenu> {
  _TapMenuState(this.viewModel);
  HomeViewModel viewModel;


  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, model, child){
      return DefaultTabController(
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
              height: 2375.0,
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
                        ProfileDetail(viewModel),
                        ComingConcert(),
                        Promotion(),
                        Product(),
                        Review(),
                        CheckIn(),
                        ImageReview(),
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
      );
    }, model: viewModel);

  }
}
