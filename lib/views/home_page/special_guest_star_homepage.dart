part of '../init.dart';

class GuestStarHomePage extends StatefulWidget {
  const GuestStarHomePage({Key key}) : super(key: key);

  @override
  _GuestStarHomePageState createState() => _GuestStarHomePageState();
}

class _GuestStarHomePageState extends State<GuestStarHomePage> {
  Future futureArtist;

  @override
  void initState() {
    futureArtist = fetchArtistData(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureArtist,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Artist> data = snapshot.data;
          return Container(
            height: 120,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return artistCard(data: data[index]);
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator(
          strokeWidth: 2,
        );
      },
    );
  }

  Widget artistCard({Artist data}) {
    return SizedBox(
      width: 105,
      child: Card(
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(data.image),
                  radius: 30,
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: Text(
                data.name,
                style: TextStyle(fontSize: fontSize3),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
