class WeatherModel{
  late final String cityName;
  late final DateTime date;
  late final double temp;
  late final String image;
  late final double minTemp;
  late final double maxTemp;
  late final String weatherCondition;

  WeatherModel(
  {
    required this.cityName,
    required this.date,
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
}

      );
  factory WeatherModel.fromJson(dynamic data){

    var jsonData=data["forecast"]["forecastday"][0]['day'];
    return WeatherModel(
        cityName: data['location']['name'],
        date: DateTime.parse(data["current"]["last_updated"],),
        temp: data['forecast']['forecastday'][0]['day']['avgtemp_c'],
        image: jsonData['condition']['icon'],
        minTemp: jsonData['mintemp_c'],
        maxTemp: jsonData['maxtemp_c'],
        weatherCondition: jsonData['condition']['text']);
  }





}