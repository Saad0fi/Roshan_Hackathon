import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String type;
  final Widget child;


  const ButtonWidget({super.key, required this.type,
  required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: type == "Login" ?
      ElevatedButton.styleFrom(
          fixedSize: Size(358, 65),
      ) :
      ElevatedButton.styleFrom(
        fixedSize: Size(122, 65),
      )  ,
      //Go to Signup Screen
      onPressed: onPressed,
      child: child
    );
  }
}
