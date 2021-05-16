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
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Artist> data = snapshot.data;
          return Container(
            height: 150,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(data[index].image),
                          radius: 30,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        data[index].name,
                        style: TextStyle(fontSize: subTitleText),
                      ),
                    ],
                  ),
                );
              },
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator(
          strokeWidth: 2,
        );
      },
      future: futureArtist,
    );
  }
}
