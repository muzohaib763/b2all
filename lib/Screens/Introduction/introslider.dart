import 'package:flutter/material.dart';

class IntroductionSlider extends StatelessWidget {
  final String title;
  final String description;
  final String image;


  IntroductionSlider({this.title, this.description, this.image,});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      //color: Colors.white,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image.asset(
          //   image,
          //   fit: BoxFit.cover,
          //  // width: width * 0.6,
          // ),
          // SizedBox(
          //   height: 60,
          // ),
          SizedBox(
            height: 380,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey[300],
              letterSpacing: 0.1,
              fontFamily: 'RoobertTRIAL-Regular',
              fontWeight: FontWeight.bold,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.grey[300],
                letterSpacing: 0.7,
                fontFamily: 'RoobertTRIAL-Regular',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
