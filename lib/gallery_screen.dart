import 'package:demoapp/home.dart';
import 'package:demoapp/model/get_gallery_detail_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow_view/overflow_view.dart';

class Gallery extends StatelessWidget {
  HomeViewModel viewModel;
  Gallery(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 3.0, color: Colors.grey.shade300)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.5, bottom: 6.0,left: 16.0),
            child: new Text("ภาพที่เพิ่มโดยสมาชิก",
                style: TextStyle(
                  fontFamily: 'SukhumvitSet',
                  color: Color(0xff4a4a4a),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )
            ),
          ),
          Container(
            child: Row(
              children: viewModel.galleryList.map((element){
                final index = viewModel.galleryList.indexOf(element);
                return galleryWidget(
                    data: element,
                    total: viewModel.galleryDetail?.pagination?.total ?? 0,
                    showTotal: index == viewModel.galleryList.length - 1,
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.5, color: Colors.grey.shade300),
                     bottom: BorderSide(width: 3, color: Colors.grey.shade300)
                )
            ),
            margin: EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ButtonWitget(Icons.camera_alt_outlined, "เพิ่มรูป"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 6.0),
                  child: ButtonWitget(Icons.edit, "เขียนรีวิว"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 6.0),
                  child:ButtonWitget(Icons.location_pin, "เช็คอิน"),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}

// ignore: non_constant_identifier_names
Widget ButtonWitget(IconData iconData, String text) {
  return new Container(
      width: 107,
      height: 37,
      decoration: BoxDecoration(
          color: Color(0xffda3534),
          borderRadius: BorderRadius.circular(12)
      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: Colors.white,),
        SizedBox(width: 10.0,),
        Text(text,
            style: TextStyle(
              fontFamily: 'SukhumvitSet',
              color: Color(0xffffffff),
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            )
        )
      ],
    ),
  );
}


class galleryWidget extends StatelessWidget {
  const galleryWidget({Key?  key, required this.data, required this.total, this.showTotal = false}) : super(key: key);
  final GetGalleryDetailDataRecord data;
  final int total;
  final bool showTotal;

  @override
  Widget build(BuildContext context) {
    if(showTotal){
      return Stack(
        children: [
          Container(
            height: 107.0,
            width: 107.0,
            margin: EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.network(
                '${data.image?.resizeUrl}',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 101.0,
            width: 101.0,
            color: Colors.black.withOpacity(0.5),
          ),

           Container(
             margin: EdgeInsets.only(left: 10.0),
             height: 101.0,
             width: 101.0,
             child: Center(
               child: Text('+' + (total - 3).toString(),
                    style: TextStyle(
                      fontFamily: 'SFUIText',
                      color: Color(0xffffffff),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                ),
             ),
           ),

        ],
      );

    }else{
      return Container(
        height: 107.0,
        width: 107.0,
        margin: EdgeInsets.only(left: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.network(
            '${data.image?.resizeUrl}',
          ),
        ),
      );
    }
  }
}


