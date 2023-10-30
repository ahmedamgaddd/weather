import 'package:weather/models/weather_model.dart';

class WeatherState{}
class WeatherInitialState extends WeatherState {}
class WeatherLoadedState extends WeatherState{
  late final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}
class WeatherFailureState extends WeatherState{
  late final String errMessage;
  WeatherFailureState(this.errMessage);
}

