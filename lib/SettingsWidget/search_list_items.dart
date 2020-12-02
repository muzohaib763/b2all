import 'package:flutter/material.dart';

Widget searchListItem(String img, String movieName) {
  return Container(
    margin: EdgeInsets.only(right: 0),
    width: 155,
    height: 170,
    child: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 160,
              width: 145,
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
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),

    ),
  );
}
