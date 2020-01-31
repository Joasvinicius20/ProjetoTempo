import 'package:tempo_app/weather.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Weather> getWeather() async {
  final String url = 'https://api.hgbrasil.com/weather?key=c1848be5';

   final response = await http.get(url);

  if(response.statusCode == 200) {
    return Weather.fromJson(json.decode(response.body));
  } else {
    throw Exception("Deu ruim");
  }
}