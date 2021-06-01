part of '../../init.dart';

class ConcertDetailMobile extends StatelessWidget {
  var data;

  ConcertDetailMobile(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      LoveIcon()
                    ],
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: MediaQuery.of(context).size.height * 0.0003,
            minChildSize: MediaQuery.of(context).size.height * 0.0003,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18.0, bottom: 18.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Icon(
                                Icons.expand_less,
                                size: 48,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(data['name'],
                                    style: TextStyle(fontSize: fontSize1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(child: Text(data['genre'])),
                      SizedBox(height: margin2),
                      Container(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black45),
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
                      SizedBox(height: margin2),
                      Text('Guest Star'),
                      SizedBox(height: margin3),
                      RelatedArtist(data),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          onPrimary: Colors.white,
          onSurface: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('BOOK NOW!'),
        ),
        onPressed: () {},
      ),
    );
  }
}
