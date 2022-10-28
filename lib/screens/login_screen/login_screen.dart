import 'package:college_app/components/custom_buttons.dart';
import 'package:college_app/constant_color.dart';
import 'package:college_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  //const ({Key? key}) : super(key: key);
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form now
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user tap anywhere on the screen ,keyboard hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/transLogo.png',
                  height: 150.0,
                  width: 150.0,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hi',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.w200,
                            )),
                    Text('Measian',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding / 6,
                ),
                Text('Sign to continue',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 3),
                topRight: Radius.circular(kDefaultPadding * 3),
                //bottomLeft: Radius.circular(kDefaultPadding*3),
                //bottomRight: Radius.circular(kDefaultPadding*3),
              ),
              color: kOtherColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        sizedBox,
                        buildEmailField(),
                        sizedBox,
                        buildPasswordField(),
                        sizedBox,
                        DefaultButton(
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              //go to next activity
                              Navigator.restorablePushNamedAndRemoveUntil(
                                  context,
                                  HomeScreen.routeName,
                                  (route) => false);
                            }
                          },
                          title: 'SIGN IN',
                          iconData: Icons.arrow_forward_outlined,
                        ),
                        sizedBox,
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Forgot Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Enter the Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'please enter the mail';
          //if it doesnot matches the pattern,like
          // it not contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email ';
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible ? Icons.visibility_off_outlined : Icons.visibility,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }
}
