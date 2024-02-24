import 'package:flutter/material.dart';
import 'package:zap_chat/screens/chat_screen.dart';
import 'package:zap_chat/screens/login_screen.dart';
import 'package:zap_chat/screens/register_screen.dart';
import 'package:zap_chat/screens/welcome_screen.dart';

void main() {
  runApp(zapchat());
}

class zapchat extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge:TextStyle(
            color:Colors.black54,
          ),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id : (context) => ChatScreen(),
      },
    );
  }
}