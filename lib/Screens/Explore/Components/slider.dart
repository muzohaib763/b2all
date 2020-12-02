import 'package:business_2_all/Screens/signuppage.dart';
import 'package:flutter/material.dart';

Widget sliderItem(String img, String movieName) {
  return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            movieName,
            style: TextStyle(
              color: Colors.grey[700],
              letterSpacing: 0.1,
              fontFamily: 'RoobertTRIAL-Regular',
              fontSize: 24,

            ),
          ),
          SizedBox(height: 7,),

          Row(
            children: [
              Text(
                'Hyped For SHADOW',
                style: TextStyle(
                  color: Colors.grey[700],
                  letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
                ),
              ),
              SizedBox(width: 4,),
              Text(
                'LiveStreaming',
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
              SizedBox(width: 8,),

            ],
          ),
        ],
      ),

  );
}