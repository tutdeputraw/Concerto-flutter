part of 'models.dart';

class Artist {
  int id;
  String name;
  String image;
  String instagramAccount;
  String facebookAccount;
  String twitterAccount;

  Artist(
      {this.id,
      this.name,
      this.image,
      this.instagramAccount,
      this.facebookAccount,
      this.twitterAccount});

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
        id: json['id'],
        name: json['name'],
        image: json['photo'],
        instagramAccount: json['instagramAccount'],
        facebookAccount: json['facebookAccount'],
        twitterAccount: json['twitterAccount']);
  }
}

Future fetchArtistData({BuildContext context}) async {
  final response = await DefaultAssetBundle.of(context)
      .loadString("assets/json/artists.json");
  List jsonResponse;

  if (response.isNotEmpty) {
    jsonResponse = json.decode(response);
    return jsonResponse.map((data) => new Artist.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}
