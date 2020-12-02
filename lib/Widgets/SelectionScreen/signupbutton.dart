import 'package:flutter/material.dart';

class SSignUpButton extends StatefulWidget {
  @override
  _SSignUpButtonState createState() => _SSignUpButtonState();
}

class _SSignUpButtonState extends State<SSignUpButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 60.0,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/**SignUp');
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        // fontFamily: 'Montserrat',
                        fontSize: 20,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
