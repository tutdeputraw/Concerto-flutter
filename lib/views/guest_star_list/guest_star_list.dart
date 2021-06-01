part of '../init.dart';

class GuestStarList extends StatelessWidget {
  const GuestStarList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Special Guest Star',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Scrollbar(
        child: GuestStar(),
        radius: Radius.circular(10),
        showTrackOnHover: true,
      ),
    );
  }
}
