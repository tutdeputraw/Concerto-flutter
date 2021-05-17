part of '../init.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Concerto',
            style: TextStyle(fontSize: fontSize1, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GuestStarSeeMore(),
              SizedBox(height: 16),
              GuestStarHomePage(),
              SizedBox(height: 20),
              Text('Upcoming Concert', style: TextStyle(fontSize: fontSize2)),
              SizedBox(height: margin3),
              ConcertHomePage(),
              SizedBox(height: margin3),
              SeeMoreButton(),
            ],
          ),
        ),
      ),
    );
  }
}
