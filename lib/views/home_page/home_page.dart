part of '../init.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 415) {
          return HomePageMobile();
        } else {
          return HomePageWeb();
        }
      },
    );
  }
}