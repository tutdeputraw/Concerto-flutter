part of '../init.dart';

class ConcertList extends StatelessWidget {
  const ConcertList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Upcoming Concert',
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: SingleChildScrollView(child: Concert()),
      ),
    );
  }
}
