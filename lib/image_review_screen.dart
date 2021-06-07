import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow_view/overflow_view.dart';

class ImageReview extends StatelessWidget {
  List<ImagesReview> imageReview = <ImagesReview>[
    ImagesReview('images/concert1.jpg'),
    ImagesReview('images/concert2.jpg'),
    ImagesReview('images/concert3.jpg'),
    ImagesReview('images/concert4.jpg'),
    ImagesReview('images/concert5.jpg'),
  ];
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
            margin: EdgeInsets.only(left: 6.0, right: 16.0),
            child: OverflowView(
              direction: Axis.horizontal,
              spacing: 0,
              children: <Widget>[
                for (int i = 0; i < imageReview.length; i++)
                  ImageWidget(
                    image: imageReview[i].initials,
                    text: '',
                  ),

              ],
              builder: (context, remaining) {
                int lastImg = remaining - 1;
                return ImageWidget(
                  text: '+$lastImg',
                  image: imageReview[lastImg].initials,
                );
              },
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
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.0),
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
      width: 104,
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


class ImageWidget extends StatelessWidget {
  const ImageWidget({Key?  key, required this.image, required this.text}) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return text == '' ? Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          height: 101.0,
          width: 101.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(
              image,fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          height: 101.0,
          width: 101.0,
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    ) : Stack(
      children: [
        Container(
          height: 101.0,
          width: 101.0,
          margin: EdgeInsets.only(left: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(
              image,fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          height: 101.0,
          width: 101.0,
          color: Colors.black.withOpacity(0.3),
        ),
        Center(
          child: new Text(text,
              style: TextStyle(
                fontFamily: 'SFUIText',
                color: Color(0xffffffff),
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )
          ),
        ),

      ],
    );
  }
}
class ImagesReview {
  const ImagesReview(this.initials);
  final String initials;

}


