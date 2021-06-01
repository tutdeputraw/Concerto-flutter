part of '../init.dart';

class GuestStarDetail extends StatelessWidget {
  var data;

  GuestStarDetail({this.data});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 415) {
          return DetailGuestStarMobile(data);
        } else {
          return DetailGuestStarWeb(data);
        }
      },
    );
  }
}
