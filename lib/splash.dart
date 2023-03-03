
import 'package:flutter/material.dart';
import 'package:flutter_application_1/first_page.dart';
import 'package:flutter_application_1/fourth_page.dart';
import 'package:flutter_application_1/second_page.dart';
import 'package:flutter_application_1/third_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash extends StatelessWidget {
  // const HomePage({super.key});

    final _controller=PageController();

  Splash({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                // RegisterPage(),
                FirstPage(),
                SecondPage(),
                ThirdPage(),
                FourthPage(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: SlideEffect(
              activeDotColor: Color.fromARGB(255, 0, 0, 0),
              dotColor: Color.fromARGB(255, 120, 105, 110).withOpacity(0.5),
              dotHeight: 20,
              dotWidth: 20,
            ), 
          ),
        ],
      ),
    );
  }
}







const colors = [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];