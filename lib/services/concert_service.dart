part of 'services.dart';

Future concertService() async {
  final response = await rootBundle.loadString('assets/json/concerts.json');

  if (response.isNotEmpty) {
    return json.decode(response);
  } else {
    throw Exception('Failed to load data');
  }
}
