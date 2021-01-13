import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() =>runApp(MaterialApp(
       home: AnimatedSplashScreen(
         splash:Icons.add_circle_outline_sharp,
         nextScreen: Ninja(),
         splashIconSize: 120.0,
         splashTransition: SplashTransition.fadeTransition,
         backgroundColor: Colors.amber,
         duration: 500,
       ),
));
class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('COUNTER'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
      floatingActionButton:SpeedDial (
        animatedIcon: AnimatedIcons.menu_close,
          closeManually: true,
          curve: Curves.easeInBack,
        backgroundColor: Colors.amber,
          children: [
            SpeedDialChild(
                 backgroundColor: Colors.white,
                 onTap: (){
                   print('add');
                   setState(() {
                     counter++;
                   });
                 },
              child: Icon(
                Icons.arrow_upward,
                color: Colors.black,
              )
            ),
            SpeedDialChild(
                backgroundColor: Colors.white,
                onTap: (){
                  print("subtract");
                  setState(() {
                    counter--;
                  });
                },
                child: Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.black,
                )
            ),
            SpeedDialChild(
                backgroundColor: Colors.white,
                onTap: (){
                  print("Reset");
                  setState(() {
                    counter=0;
                  });
                },
                child: Icon(
                  Icons.adjust,
                  color: Colors.black,
                )
            ),
          ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 "COUNT",
                 style: TextStyle(
                   color: Colors.grey,
                   letterSpacing: 2.0,
                   fontSize: 60.0,
                 ),
               ),
             ],
           ),
           SizedBox(height: 150.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 "$counter",
                 style: TextStyle(
                   color: Colors.amber,
                   letterSpacing: 2.0,
                   fontSize: 100.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ],
           ),
         ],
      ),
      )
    );
  }
}


