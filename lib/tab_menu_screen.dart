import 'package:demoapp/check_in_screen.dart';
import 'package:demoapp/coming_concert_screen.dart';
import 'package:demoapp/home.dart';
import 'package:demoapp/gallery_screen.dart';
import 'package:demoapp/profile_detail_screen.dart';
import 'package:demoapp/promotion_screen.dart';
import 'package:demoapp/review_screen.dart';
import 'package:flutter/material.dart';

import 'product_screen.dart';
class TabMenu extends StatefulWidget {
  HomeViewModel viewModel;
  TabMenu(this.viewModel);

  @override
  _TabMenuState createState() => _TabMenuState(this.viewModel);
}

class _TabMenuState extends State<TabMenu> {
  _TabMenuState(this.viewModel);
  HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
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
              child: TabBarView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        ProfileDetail(viewModel),
                        ComingConcert(viewModel),
                        Promotion(viewModel),
                        Product(viewModel),
                        Review(viewModel),
                        CheckIn(viewModel),
                        Gallery(viewModel),
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
  }
}

