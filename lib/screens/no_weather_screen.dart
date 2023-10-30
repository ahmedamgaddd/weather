import 'package:flutter/material.dart';
class NoWeatherScreen extends StatelessWidget {
  const NoWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image(image:
            AssetImage('assets/images/weather.png'),
              height: 100,
            ),

            Text('no weather now ,start search to get weather'),
          ],
        ),
      ),
    );
  }
}