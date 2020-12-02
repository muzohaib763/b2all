import 'package:flutter/material.dart';

class OrBottom extends StatefulWidget {
  @override
  _OrBottomState createState() => _OrBottomState();
}

class _OrBottomState extends State<OrBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        //alignment: Alignment.center,
        height: 20,
        child: Text(
          'or',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),

      ),

    );
  }
}
