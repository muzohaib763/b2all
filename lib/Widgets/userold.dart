import 'package:flutter/material.dart';
import 'package:business_2_all/Screens/loginpage.dart';

// login page ki dependency or nichy add krna uska name

class UserOld extends StatefulWidget {
  @override
  _UserOldState createState() => _UserOldState();
}

class _UserOldState extends State<UserOld> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 30),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 30,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Text(
                'Have an account?',
                style: TextStyle(
                  color: Colors.grey[300],
                  letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
                  fontSize: 17,
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.grey[300],
                  letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
