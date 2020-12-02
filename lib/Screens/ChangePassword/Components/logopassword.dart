import 'package:flutter/material.dart';

class LogoPassword extends StatefulWidget {
  @override
  _LogoPasswordState createState() => _LogoPasswordState();
}

class _LogoPasswordState extends State<LogoPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/logob.png'),
      ),
    );
  }
}
