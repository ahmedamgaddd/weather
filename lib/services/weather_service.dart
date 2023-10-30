

import 'dart:developer';

import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class WeatherService{
  late final Dio dio;
  String baseUrl='http://api.weatherapi.com/v1';
  String apiKey= '0fa64d09516f4fc7827195711232609';
  WeatherService(this.dio);
  Future<WeatherModel> getWeather({required String cityName})async{
    try{
      Response response= await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weather = WeatherModel.fromJson(response.data);
      return weather;
    }on DioException catch(e){
      final String errorMessage=e.response?.data['error']['message']??'oops has error,try again';
      throw Exception(errorMessage);
    }catch(e){
      log(e.toString());
      throw Exception('oops,try later');
    }
  }

}