
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';

import 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  getWeather({required String cityName})async{
    try{
      weatherModel= await WeatherService(Dio()).getWeather(cityName: cityName);

      emit(WeatherLoadedState(weatherModel!));

    }catch(e){
      emit(WeatherFailureState(
        e.toString()
      ));
    }
  }
}
