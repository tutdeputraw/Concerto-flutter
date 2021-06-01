part of '../../init.dart';

class HomePageWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        // centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
          child: Text('CONCERTO'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://mixedinkey.com/wp-content/themes/mixed-in-key/'
                        'img/cta-bg-6.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Container(
                    child: Text('Special Guest Star',
                        style: TextStyle(
                            color: Colors.black, fontSize: fontSize2)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: SpecialGuestStar(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text('UPCOMING CONCERT'),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.08,
                  left: MediaQuery.of(context).size.width * 0.08,
                  right: MediaQuery.of(context).size.width * 0.08),
              child: UpcomingConcert(4),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
