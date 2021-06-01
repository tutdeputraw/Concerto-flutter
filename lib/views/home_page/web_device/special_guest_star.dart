part of '../../init.dart';

class SpecialGuestStar extends StatefulWidget {
  const SpecialGuestStar({Key key}) : super(key: key);

  @override
  _SpecialGuestStarState createState() => _SpecialGuestStarState();
}

class _SpecialGuestStarState extends State<SpecialGuestStar> {
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
          return CarouselSlider(
            items: [
              artistCard(data[0]),
              artistCard(data[1]),
              artistCard(data[2]),
              artistCard(data[3]),
              artistCard(data[4]),
              artistCard(data[5]),
              artistCard(data[6]),
              artistCard(data[7]),
              artistCard(data[8]),
              artistCard(data[9]),
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.5,
              aspectRatio: 16 / 9,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
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
      highlightColor: Colors.white,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GuestStarDetail(data: data);
        }));
      },
      child: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(data['photo']), fit: BoxFit.cover)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.0, 0.5],
              ),
            ),
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.03),
            child: Text(
              data['name'],
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
