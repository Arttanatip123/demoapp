import 'package:demoapp/home.dart';
import 'package:demoapp/model/get_checkin_detail_entity.dart';
import 'package:flutter/material.dart';
import 'package:overflow_view/overflow_view.dart';

class CheckIn extends StatelessWidget {
  HomeViewModel viewModel;

  CheckIn(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16.0, top: 15.5, bottom: 6.0),
            child: new Text(
                "เช็คอิน ${viewModel.checkinDetail?.pagination?.total} คน",
                style: TextStyle(
                  fontFamily: 'SukhumvitSet',
                  color: Color(0xff4a4a4a),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: viewModel.checkInList.map((element) {
                final index = viewModel.checkInList.indexOf(element);
                return AvatarWidget(
                  data: element,
                  showTotal: index == viewModel.checkInList.length - 1,
                  //total: ((viewModel.reviewDetail?.pagination?.total ?? 0) - 8).toString(),
                  total: viewModel.checkinDetail?.pagination?.total ?? 0,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget(
      {Key? key,
      required this.data,
      this.showTotal = false,
      required this.total})
      : super(key: key);

  final int total;
  final GetCheckinDetailDataRecord data;
  final bool showTotal;

  @override
  Widget build(BuildContext context) {
    if (showTotal) {
      return CircleAvatar(
        radius: 18,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        child: Stack(
          children: [
            Container(              
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  '${data.user?.image?.resizeUrl}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
            ),
            Center(
              child: Text(
                "+" + (total - 8).toString(),
                style: TextStyle(
                  fontFamily: 'SFUIText',
                  color: Color(0xffffffff),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: CircleAvatar(
          radius: 18,
          foregroundColor: Colors.white,
          backgroundColor: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network(
              '${data.user?.image?.resizeUrl}',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }
  }
}

class Avatar {
  const Avatar(this.initials, this.color);

  final String initials;
  final Color color;
}
