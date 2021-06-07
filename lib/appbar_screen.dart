import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 34.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Text(
              "The plant Cafe & Restaurant",
              style: TextStyle(
                fontFamily: 'SukhumvitSet',
                color: Color(0xff4a4a4a),
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 16.0),
              height: 24.0,
              width: 24.0,
              child: Image.asset('images/arrow.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
