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
    return Expanded(
      child: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Concert> data = snapshot.data;
            return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Text(data[index].name),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45)),
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
                                    data[index].date,
                                    style: TextStyle(fontSize: cardMargin),
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
                                    data[index].date,
                                    style: TextStyle(fontSize: cardMargin),
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
                                    data[index].price,
                                    style: TextStyle(fontSize: cardMargin),
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
                },
                itemCount: data.length);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
        future: futureConcert,
      ),
    );
  }
}
