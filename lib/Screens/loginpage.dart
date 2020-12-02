import 'package:business_2_all/Widgets/facebook.dart';
import 'package:business_2_all/Widgets/or.dart';
import 'package:flutter/material.dart';
import 'package:business_2_all/Widgets/verticalText.dart';
import 'package:business_2_all/Widgets/logintext.dart';
import 'package:business_2_all/Widgets/loginemail.dart';
import 'package:business_2_all/Widgets/loginbutton.dart';
import 'package:business_2_all/Widgets/loginfirst.dart';
import 'package:business_2_all/Widgets/password.dart';
import 'package:business_2_all/Widgets/loginpageforgot.dart';
import 'package:business_2_all/Widgets/google.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, Colors.black,
              ]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                LoginEmail(),
                Password(),
                Forgot(),
                ButtonLogin(),
                LoginFirst(),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(

                    children: [


                      Flexible(
                        child: GoogleButton(),


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
