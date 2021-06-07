import 'package:flutter/material.dart';
import 'package:overflow_view/overflow_view.dart';

class CheckIn extends StatelessWidget {
  List<Avatar> avatars = <Avatar>[
    Avatar('A', Colors.red),
    Avatar('B', Colors.red),
    Avatar('C', Colors.red),
    Avatar('D', Colors.red),
    Avatar('E', Colors.red),
    Avatar('F', Colors.red),
    Avatar('G', Colors.red),
    Avatar('H', Colors.red),
    Avatar('I', Colors.red),
    Avatar('J', Colors.red),
    Avatar('K', Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.5, bottom: 6.0),
            child: new Text("เช็คอิน ${avatars.length} คน",
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
            child: OverflowView(
              direction: Axis.horizontal,
              spacing: 6,
              children: <Widget>[
                for (int i = 0; i < avatars.length; i++)
                  AvatarWidget(
                    text: avatars[i].initials,
                    color: avatars[i].color,
                  )
              ],
              builder: (context, remaining) {
                return AvatarWidget(
                  text: '+$remaining',
                  color: Colors.red.shade900,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key?  key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: color,
      foregroundColor: Colors.white,
      child: Text(
        text,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}

class Avatar {
  const Avatar(this.initials, this.color);
  final String initials;
  final Color color;
}