part of '../init.dart';

class GuestStar extends StatefulWidget {
  const GuestStar({Key key}) : super(key: key);

  @override
  _GuestStarState createState() => _GuestStarState();
}

class _GuestStarState extends State<GuestStar> {
  Future futureArtist;

  @override
  void initState() {
    futureArtist = artistService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureArtist,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data;
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return artistCard(data[index]);
            },
            separatorBuilder: (context, index) => Divider(
              color: Colors.white,
              height: 1,
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return LinearProgressIndicator();
      },
    );
  }

  Widget artistCard(var data) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GuestStarDetail(data: data);
        }));
      },
      child: Card(
        elevation: 0,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Center(
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(data['photo'])))),
            Expanded(flex: 3, child: Text(data['name'])),
          ],
        ),
      ),
    );
  }
}
