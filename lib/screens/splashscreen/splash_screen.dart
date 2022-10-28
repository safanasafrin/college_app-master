
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:college_app/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName='SplashScreen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
        //for not returning to splash screen
        Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('Measi Institue of information technology',style:TextStyle(fontSize:25,fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
            Image.asset('assets/images/transLogo.png',height: 350,),
          ],
        ),


      )
    );
  }
}
