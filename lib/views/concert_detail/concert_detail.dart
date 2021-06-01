part of '../init.dart';

class ConcertDetail extends StatelessWidget {
  var data;

  ConcertDetail({this.data});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 415) {
          return ConcertDetailMobile(data);
        } else {
          return ConcertDetailWeb(data);
        }
      },
    );
  }
}
