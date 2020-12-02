import 'package:business_2_all/Widgets/ForgetScreenWidgets/ForgetText.dart';
import 'package:business_2_all/Widgets/ForgetScreenWidgets/Submit%20Button.dart';
import 'package:business_2_all/Widgets/ForgetScreenWidgets/forgetbottomtext.dart';
import 'package:business_2_all/Widgets/ForgetScreenWidgets/forgetemail.dart';
import 'package:business_2_all/Widgets/ForgetScreenWidgets/forgetlogo.dart';
import 'package:flutter/material.dart';
import 'package:business_2_all/Widgets/ForgetScreenWidgets/forgetverticaltext.dart';



class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
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

                ForgetLogo(),
                ForgetPassEmail(),
                SubmitButton(),
                BottomText(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
