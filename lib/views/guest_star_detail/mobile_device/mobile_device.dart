part of '../../init.dart';

class DetailGuestStarMobile extends StatelessWidget {
  var data;

  DetailGuestStarMobile(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blueGrey,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: LoveIcon(),
              )
            ],
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(data['name']),
              centerTitle: true,
              background: Image.network(
                data['photo'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(left: 18, right: 18, bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: margin2),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black12)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
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
                        ),
                      ),
                      SizedBox(height: margin2),
                      Text('Related Concert',
                          style: TextStyle(fontSize: fontSize2)),
                      SizedBox(height: margin3),
                      RelatedConcert(data: data),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
