part of '../init.dart';

class ConcertHomePage extends StatefulWidget {
  const ConcertHomePage({Key key}) : super(key: key);

  @override
  _ConcertHomePageState createState() => _ConcertHomePageState();
}

class _ConcertHomePageState extends State<ConcertHomePage> {
  Future futureConcert;

  @override
  void initState() {
    futureConcert = fetchConcertData(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Concert> data = snapshot.data;
          return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return concertCard(data[index]);
              },
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
      future: futureConcert,
    );
  }

  Widget concertCard(Concert data){
    return Card(
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 6),
              child: Text(data.name),
            ),
            decoration: BoxDecoration(
              border:
              Border(bottom: BorderSide(color: Colors.black12)),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.event_available),
                    SizedBox(height: 5),
                    Text(
                      data.date,
                      style: TextStyle(fontSize: margin4),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(height: 5),
                    Text(
                      data.date,
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
                      data.price,
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
    );
  }
}
