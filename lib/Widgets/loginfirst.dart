import 'package:flutter/material.dart';
import 'package:business_2_all/Screens/signuppage.dart';
import 'package:flutter/painting.dart';
// new user / signup walo ko add krna nichy oper

class LoginFirst extends StatefulWidget {
  @override
  _LoginFirstState createState() => _LoginFirstState();
}

class _LoginFirstState extends State<LoginFirst> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 30),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 30,
        child: Row(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(
                'New To B2A?',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[300],
                  letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey[300],
                  letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
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
