import 'package:flutter/material.dart';
import 'package:weather/screens/home_screen.dart';



class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.redAccent,
                        Colors.pinkAccent,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft

                  )
              ),),
            Column(
              children: [
                const Center(
                  child: Image(image: AssetImage(
                    "assets/images/ser.jpeg",
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Discover the Weather in your City",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 100,
                ),
                Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen()));
                    },
                        child: const Text("Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ))
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}