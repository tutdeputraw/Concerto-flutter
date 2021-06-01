part of '../../init.dart';

class DetailGuestStarWeb extends StatelessWidget {
  var data;

  DetailGuestStarWeb(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
            child: Text('CONCERTO'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: NetworkImage(data['photo']),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        alignment: Alignment.bottomCenter,
                        child: Text(data['name'],
                            style: TextStyle(color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30)),
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
                  child: Column(
                    children: [
                      Text('Social Media'),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: Icon(FontAwesomeIcons.instagram),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(FontAwesomeIcons.twitter),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(FontAwesomeIcons.facebookF),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text('Upcoming Concert'),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Expanded(
                        flex: 6,
                        child: WebRelatedConcert(data: data,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
