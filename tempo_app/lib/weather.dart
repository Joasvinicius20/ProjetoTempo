class Weather {
  String city;
  String date;
  String condition;
  String forecast;
  int maxTemp;
  int minTemp;


  factory Weather.fromJson(Map<String, dynamic> jsonMap){
    return Weather(
        city: jsonMap['results']['city'],
        date: jsonMap['results']['date'],
        condition: jsonMap['results']['forecast'][0]['description'],
        forecast: jsonMap ['results']['forecast'][0]['forecast'],
        maxTemp: jsonMap['results']['forecast'][0]['max'],
        minTemp: jsonMap['results']['forecast'][0]['min']);
  }


  Weather({this.city, this.date, this.condition, this.forecast, this.maxTemp, this.minTemp});

}