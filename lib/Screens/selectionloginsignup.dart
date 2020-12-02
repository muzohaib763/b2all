import 'package:business_2_all/Widgets/ForgetScreenWidgets/forgetemail.dart';
import 'package:business_2_all/Widgets/SelectionScreen/SelectionButton.dart';
import 'package:business_2_all/Widgets/SelectionScreen/selectionlogo.dart';
import 'package:business_2_all/Widgets/SelectionScreen/selectiontext.dart';
import 'package:business_2_all/Widgets/SelectionScreen/selectionverticaltext.dart';
import 'package:business_2_all/Widgets/SelectionScreen/signupbutton.dart';
import 'package:business_2_all/Widgets/logintext.dart';
import 'package:business_2_all/Widgets/verticalText.dart';
import 'package:flutter/material.dart';

class SelectionLogSign extends StatefulWidget {
  @override
  _SelectionLogSignState createState() => _SelectionLogSignState();
}

class _SelectionLogSignState extends State<SelectionLogSign> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              //   Row(children: <Widget>[
              //     //SVerticalText(),
              //    // SelectionText(),
              //   ]),

                SelectionLogo(),
                SelectionButton(),
                SSignUpButton(),
                // LoginEmail(),
                // Password(),
                // Forgot(),
                // ButtonLogin(),
                // LoginFirst(),
                // GoogleButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
