part of '../../init.dart';

class UpcomingConcert extends StatefulWidget {
  final itemCount;

  UpcomingConcert(this.itemCount);

  @override
  _UpcomingConcertState createState() => _UpcomingConcertState();
}

class _UpcomingConcertState extends State<UpcomingConcert> {
  Future futureConcert;

  @override
  void initState() {
    futureConcert = concertService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureConcert,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data;
          return GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.itemCount,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return gridList(data[index], context);
              // return InkWell(
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return ConcertDetail(data: data[index]);
              //     }));
              //   },
              //   child: Stack(
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage(data[index]['image']),
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(
              //             bottom: MediaQuery.of(context).size.height * 0.02),
              //         child: Text(
              //           data[index]['name'],
              //           style: TextStyle(color: Colors.white),
              //         ),
              //         alignment: Alignment.bottomCenter,
              //         decoration: BoxDecoration(
              //           gradient: LinearGradient(
              //             colors: [Colors.black, Colors.transparent],
              //             begin: Alignment.bottomCenter,
              //             end: Alignment.topCenter,
              //             stops: [0.0, 0.5],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return LinearProgressIndicator();
      },
    );
  }
}

Widget gridList(var data, context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ConcertDetail(data: data);
      }));
    },
    child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(data['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02),
            child: Text(
              data['name'],
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.0, 0.5],
              ),
            ),
          )
        ],
      ),
  );
}
