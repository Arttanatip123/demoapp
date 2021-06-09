import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget{
  final String title;
  final String description;
  final String? textButton;
  final String? dangertextButton;

  const CustomDialog({Key? key, required this.title, required this.description, this.textButton, this.dangertextButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 315.0,
        margin: EdgeInsets.only(bottom: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24.0,top: 24.0),
              child: Text(title,
                  style: TextStyle(
                    fontFamily: 'SukhumvitSet',
                    color: Color(0xff08080a),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0, top: 13.0, right: 30.0, bottom: 12.0),
                child: new Text(description,
                    style: TextStyle(
                      fontFamily: 'SukhumvitSet',
                      color: Color(0xff6d6d6d),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                dangertextButton!= null
                    ? InkWell(
                    onTap: () => Navigator.pop(context, 'ยกเลิก'), // Handle your callback
                    child: Text(dangertextButton ?? '',
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Color(0xffda3534),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        )),
                    splashColor: Colors.white30
                )
                    : SizedBox(),
                textButton != null && dangertextButton != null ?   SizedBox(
                  width: 39,
                ):SizedBox(),
                textButton != null
                    ? InkWell(
                    onTap: () => Navigator.pop(context, 'ยืนยัน'), // Handle your callback
                    child: new Text(textButton ?? '',
                        style: TextStyle(
                          fontFamily: 'SukhumvitSet',
                          color: Color(0xff08080a),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                    splashColor: Colors.white30)
                    : SizedBox(),
                SizedBox(width: 24.0,),
              ],
            )
          ],
        ),
      ),
    );
  }

}