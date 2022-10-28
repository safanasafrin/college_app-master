import 'package:college_app/constant_color.dart';
import 'package:college_app/routes.dart';
import 'package:college_app/screens/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miit',
      theme: ThemeData.dark().copyWith(
        //default color
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        textTheme:
            GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                .apply()
                .copyWith(
                    bodyText1: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
              bodyText2: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 28.0,
                ),

              subtitle1: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500),
                    subtitle2: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),),
        //inputdecoration theme for all our the app
        inputDecorationTheme: InputDecorationTheme(
          //label style for formField
          labelStyle: TextStyle(
            fontSize: 18.0,
            color: kTextLightColor,
            height: 0.5,
          ),
          //hint style
          hintStyle: TextStyle(
            fontSize: 16.0,
            color: kTextBlackColor,
            height: 0.5,
          ),
          //we aree uusing underline input border
          //not outline
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
              width: 0.7,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            ),
          ),
          //on focus change color
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              //width:0.7,
            ),
          ),
          //color changes when user enters wrong information
          //we will use validation for this process
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kErrorBorderColor,
              width: 1.2,
            ),
          ),
          //same on focus error color
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kErrorBorderColor,
              width: 1.2,
            ),
          ),
        ),
      ),
      //initial
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
