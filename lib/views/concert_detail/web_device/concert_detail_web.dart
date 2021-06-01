part of '../../init.dart';

class ConcertDetailWeb extends StatelessWidget {
  var data;

  ConcertDetailWeb(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
          child: Text('CONCERTO'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(data['image']),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.05),
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(data['name'],
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(data['genre'],
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30)),
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.5],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Row(
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.schedule),
                                  SizedBox(height: 5),
                                  Text(
                                    // data.date,
                                    data['time'],
                                    style: TextStyle(fontSize: margin4),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text('Guest Star'),
                    Expanded(
                      child: RelatedArtist(data),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
