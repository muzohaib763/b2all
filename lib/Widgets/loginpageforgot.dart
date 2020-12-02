import 'package:business_2_all/Screens/forgetpasswordpage.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 34, right: 50),
      child: Container(
        alignment: Alignment.topLeft,
        height: 20,
        child: FlatButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PasswordPage())
            );
          },
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.grey[300],
              letterSpacing: 0.1,
              fontFamily: 'RoobertTRIAL-Regular',
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}
