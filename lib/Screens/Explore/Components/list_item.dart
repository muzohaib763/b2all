import 'package:flutter/material.dart';

Widget listItem(String img, String movieName,) {
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 125,
    height: 140,
    child: Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 140,
              width: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            movieName,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 15,
            ),
          ),

        ],
      ),

    ),
  );
}
