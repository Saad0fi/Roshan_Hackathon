import 'package:flutter/material.dart';

import '../../common/widget/button_widget.dart';
import '../../home/screen/home_screen.dart';


class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      Column(children: [
        Text("Authkdjhcksdjhkd",style: TextStyle(color: Colors.black),),
        Form(child:
        TextFormField()
        ),
    ButtonWidget(type:"onboard",onPressed: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(builder: (context) => HomeScreen())
      );
    },child: Text("دخول"),)
      ],),
    );
  }
}
