part of '../init.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Concerto',
            style: TextStyle(fontSize: concertoText, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Special Guest Star',
                    style: TextStyle(fontSize: titleText)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See More',
                    style: TextStyle(fontSize: titleOfIcon, color: Colors.blue),
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            GuestStarHomePage(),
            SizedBox(height: 28),
            Text('Upcoming Concert', style: TextStyle(fontSize: titleText)),
            SizedBox(
              height: 16,
            ),
            ConcertHomePage(),
          ],
        ),
      ),
    );
  }
}
