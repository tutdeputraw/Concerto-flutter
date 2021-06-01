part of '../init.dart';

class Concert extends StatefulWidget {
  const Concert({Key key}) : super(key: key);

  @override
  _ConcertState createState() => _ConcertState();
}

class _ConcertState extends State<Concert> {
  Future futureConcert;

  @override
  void initState() {
    futureConcert = concertService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data;
          return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    color: Colors.white,
                    height: 5,
                  ),
              itemBuilder: (BuildContext context, int index) {
                return concertCard(data[index]);
              },
              itemCount: data.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return LinearProgressIndicator();
      },
      future: futureConcert,
    );
  }

  Widget concertCard(var data) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ConcertDetail(data: data);
        }));
      },
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                // child: Text(data.name),
                child: Text(data['name']),
              ),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.event_available),
                      SizedBox(height: 5),
                      Text(
                        // data.date,
                        data['date'],
                        style: TextStyle(fontSize: margin4),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(height: 5),
                      Text(
                        // data.date,
                        data['date'],
                        style: TextStyle(fontSize: margin4),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(height: 5),
                      Text(
                        data['price'],
                        style: TextStyle(fontSize: margin4),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
