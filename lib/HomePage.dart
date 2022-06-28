import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  late var time;
  late var ss;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slider Digital Clock Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Digital Clock"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Card(
                  elevation: 5.0,
                  child: Column(
                    children: [
                      time = DigitalClock(
                        digitAnimationStyle: Curves.elasticOut,
                        is24HourTimeFormat: false,
                        areaDecoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        hourMinuteDigitTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                        amPmDigitTextStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ),
                SizedBox(height: 100,),
                ElevatedButton(onPressed: (){
                  setState((){

                  });
                }, child: Text("Mark My Thought")),

              ],
            ),
          ),
        ));
  }
}

