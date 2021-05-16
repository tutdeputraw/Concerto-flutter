part of 'models.dart';

class Concert {
  int id;
  String name;
  String date;
  String time;
  String location;
  String price;
  String genre;
  String image;

  Concert(
      {this.id,
      this.name,
      this.date,
      this.time,
      this.location,
      this.price,
      this.genre,
      this.image});

  factory Concert.fromJson(Map<String, dynamic> json) {
    return Concert(
        id: json['id'],
        name: json['name'],
        date: json['date'],
        time: json['time'],
        location: json['location'],
        price: json['price'],
        genre: json['genre'],
        image: json['image']);
  }
}

Future fetchConcertData({BuildContext context}) async {
  final response = await DefaultAssetBundle.of(context)
      .loadString("assets/json/concerts.json");
  List jsonResponse;

  if (response.isNotEmpty) {
    jsonResponse = json.decode(response);
    return jsonResponse.map((data) => new Concert.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}
