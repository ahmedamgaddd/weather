
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/screens/search_screen.dart';
import 'package:weather/screens/weather_info_screen.dart';

import '../business_logic/get_weather_cubit.dart';
import '../business_logic/get_weather_state.dart';
import 'no_weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SearchScreen();

            }));
          },
            icon:const Icon(Icons.search),),
        ],
      ),
      body : BlocBuilder<GetWeatherCubit,WeatherState>(
        builder:(context,state){
          if(state is WeatherInitialState){
            return const NoWeatherScreen();
          }else if(state is WeatherLoadedState){
            return WeatherInfoBody(
              weather: state.weatherModel,
            );
          }
          else{
            return const Text('oops there was an error');
          }
        },
      ),

    );
  }
}