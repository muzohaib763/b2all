import 'package:business_2_all/Widgets/facebook.dart';
import 'package:business_2_all/Widgets/or.dart';
import 'package:flutter/material.dart';
import 'package:business_2_all/Widgets/singup.dart';
import 'package:business_2_all/Widgets/signuptext.dart';
import 'package:business_2_all/Widgets/signupname.dart';
import 'package:business_2_all/Widgets/signupemail.dart';
import 'package:business_2_all/Widgets/Signuppassword.dart';
import 'package:business_2_all/Widgets/signupbutton.dart';
import 'package:business_2_all/Widgets/userold.dart';
import 'package:business_2_all/Widgets/signupusername.dart';
import 'package:business_2_all/Widgets/SignupGoogle.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, Colors.black]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                SignupName(),
                UserName(),
                SignupEmail(),
                Password(),
                SignUpButton(),
                UserOld(),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 92),
                  child: Row(

                    children: [
                      Flexible(
                          child: SignUpGoogle(),


                      ),
                      Flexible(child: OrBottom(),),

                      Flexible(child: Facebook(),),


                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
