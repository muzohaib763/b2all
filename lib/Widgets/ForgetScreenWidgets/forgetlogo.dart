import 'package:flutter/material.dart';

class ForgetLogo extends StatefulWidget {
  @override
  _ForgetLogoState createState() => _ForgetLogoState();
}

class _ForgetLogoState extends State<ForgetLogo> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 240, left: 50, right: 50),
        child: Container(
          height: 100,
           width: MediaQuery.of(context).size.width,
           child: Image.asset('assets/logob.png'),
    ),
    );
  }
}
