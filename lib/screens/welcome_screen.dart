// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:zap_chat/screens/login_screen.dart';
import 'package:zap_chat/screens/register_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:zap_chat/roundedbutton.dart';

class WelcomeScreen extends StatefulWidget {

  static String id = "welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation animation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1)
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {

      });
    });
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Zap Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              title: 'Log In',
              onpress: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
            ),
            RoundedButton(
                color: Colors.blueAccent,
                onpress: (){
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}


