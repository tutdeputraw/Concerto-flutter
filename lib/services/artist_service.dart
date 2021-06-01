part of 'services.dart';

Future artistService() async {
  final response = await rootBundle.loadString('assets/json/artists.json');

  if (response.isNotEmpty) {
    return json.decode(response);
  } else {
    throw Exception('Failed to load data');
  }
}
