
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../business_logic/get_weather_cubit.dart';


class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("search a City"),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (data)async{
              var getWeatherCubit= BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: data);
              Navigator.pop(context);
            },
            decoration:  InputDecoration(

              contentPadding:
              const EdgeInsets.symmetric(vertical: 30,horizontal: 24),
              label: const Text('Search'),
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.lightGreen,
                ),
              ),


              hintText: 'Enter City Name',
              suffixIcon: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}