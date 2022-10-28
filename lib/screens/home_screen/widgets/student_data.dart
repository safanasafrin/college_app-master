import 'package:college_app/constant_color.dart';
import 'package:flutter/material.dart';

class StudentName extends StatelessWidget {
  const StudentName({Key? key, required this.studentName}) : super(key: key);
  final String studentName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hi ',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w200,
              ),
        ),
        Text(
          studentName,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({Key? key, required this.studentClass}) : super(key: key);
  final String studentClass;

  @override
  Widget build(BuildContext context) {
    return Text(
      studentClass,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            fontSize: 14.0,
          ),
    );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({Key? key, required this.studentYear}) : super(key: key);
  final String studentYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: TextStyle(
            fontSize: 12.0,
            color: kTextBlackColor,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture({Key? key, required this.picAddress, required this.onPress}) : super(key: key);
  final String picAddress;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picAddress),
      ),
    );
  }
}
class StudentDataCard extends StatelessWidget {
  const StudentDataCard({Key? key, required this.attendanceTitle, required this.attendancePercentage, required this.onPressAttendance}) : super(key: key);
  final String attendanceTitle;
  final String  attendancePercentage;
  final VoidCallback onPressAttendance;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressAttendance,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              attendanceTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(
                fontSize: 16.0,
                color: kTextBlackColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              attendancePercentage,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(
                fontSize: 25.0,
                color: kTextBlackColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
