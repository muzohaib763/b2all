import 'package:flutter/material.dart';

class SelectionLogo extends StatefulWidget {
  @override
  _SelectionLogoState createState() => _SelectionLogoState();
}

class _SelectionLogoState extends State<SelectionLogo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 360, left: 50, right: 50),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/logob.png'),
      ),
    );
  }
}
