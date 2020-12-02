import 'package:business_2_all/Screens/ChangePassword/Components/ConfirmPassword.dart';
import 'package:business_2_all/Screens/ChangePassword/Components/currentpassword.dart';
import 'package:business_2_all/Screens/ChangePassword/Components/logopassword.dart';
import 'package:business_2_all/Screens/ChangePassword/Components/newpassword.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: GestureDetector(
            onTap: () { Navigator.of(context).pop(); },
            child: Icon(
              Icons.close_rounded,
              size: 30,
              color: Colors.white,
              // add custom icons also
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 17, 20, 0),
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),


        ],
      ),
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
                LogoPassword(),
                CurrentPassword(),
                NewPassword(),
                ConfirmPassword(),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
