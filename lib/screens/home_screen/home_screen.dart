import 'package:college_app/constant_color.dart';
import 'package:college_app/screens/home_screen/widgets/student_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //we will divid ethe screen into two parts
          //fixe height for first half
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(studentName: 'Aandavarey',),
                        kHalfSizedBox,
                        StudentClass(studentClass: 'MCA-B Batch |Roll No:21it64',),
                        kHalfSizedBox,
                        StudentYear(studentYear: '2021-23',),
                      ],
                    ),
                    kHalfSizedBox,
                   StudentPicture(picAddress: 'assets/images/viru.jpg',onPress: (){},),
                  ],
                ),
               sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      onPressAttendance: (
                          //attendance screen
                          ){},
                      attendanceTitle: 'Attendance',
                      attendancePercentage: '80.74%',

                    ),
                    StudentDataCard(
                      onPressAttendance: (
                       //fee screen
                       ){},
                      attendanceTitle: 'Fee Due',
                      attendancePercentage: '80,000',

                    ),

                  ],
                ),
              ],
            ),
          ),

          //other will use all the remaining  height of screen
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                //
                //height: MediaQuery.of(context).size.height/2.8,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/feedback.svg',
                          title: 'FeedBack',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/assignment.svg',
                          title: 'Assignments',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/event.svg',
                          title: 'Events',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/timetable.svg',
                          title: 'Time Table',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/fee.svg',
                          title: 'Fee Payment',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/website.svg',
                          title: 'website',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/About.svg',
                          title: 'About College',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/gallery.svg',
                          title: 'Gallery',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GotoWeb extends StatelessWidget {
  const GotoWeb(
      {Key? key,
      required this.gotoWeb,
      required this.iconWeb,
      required this.webTitle})
      : super(key: key);
  final VoidCallback gotoWeb;
  final String iconWeb;
  final String webTitle;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 45.0,
              width: 45.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}
