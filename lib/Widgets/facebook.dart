import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
       // alignment: Alignment.bottomLeft,
        height: 30,
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/facebook.png'),
      ),

    );
  }
}
