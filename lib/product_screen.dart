import 'package:demoapp/home.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Product(this.viewModel);
  HomeViewModel viewModel;

  final List product = [
    {
      "id": 1,
      "img": "images/shert_white.jpg",
      "name": "เสื้อยืดสีขาว",
      "price": 120,
    },
    {
      "id": 2,
      "img": "images/shert_black.jpg",
      "name": "เสื้อยืดสีดำ",
      "price": 130,
    },
    {
      "id": 3,
      "img": "images/shert_red.jpg",
      "name": "เสื้อยืดสีแดง",
      "price": 140,
    },
    {
      "id": 4,
      "img": "images/shert_blue.jpg",
      "name": "เสื้อยืดสีฟ้า",
      "price": 110,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return viewModel.productList == [] ? Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 3.0, color: Colors.grey.shade300
                  )
                )
            ),
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
                      "สินค้า",
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
          Container(
            padding:
            EdgeInsets.only(left: 16.0, right: 16.0),
            height: 180.0,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 3.0)),
            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 7.0),
                    width: 118.0,
                    child: Container(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                              BorderRadius.circular(3.0),
                              child: Image.asset(
                                product[index]["img"],fit: BoxFit.cover,
                                height: 118.0,
                                width: 118.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                  product[index]["name"],
                                  maxLines: 1,
                                  overflow:
                                  TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: 'SukhumvitSet',
                                    color: Color(0xff545454),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ),
                            Text(
                              '\$' +
                                  product[index]["price"]
                                      .toString(),
                              style: TextStyle(
                                fontFamily: 'SFUIText',
                                color: Color(0xff4a4a4a),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
        ],
      ),
    ) : Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 3.0, color: Colors.grey.shade300)
        )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 19.5),
                child: new Text(
                  "สินค้า",
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
                padding: EdgeInsets.only(top: 15.5, right: 16.0),
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
                        padding:
                        const EdgeInsets.only(left: 10.0, top: 3.0),
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
          Center(
            child: Container(
              height: 100.0,
              child: Center(
                child: Text(
                  'ยังไม่มีข้อมูลสินค้า',
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
            ),
          ),
        ],
      ),
    );
  }
}
