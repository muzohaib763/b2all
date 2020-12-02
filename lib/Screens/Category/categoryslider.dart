import 'package:business_2_all/Screens/golive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String action;

  SliderPage({this.title, this.description, this.image, this.action});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 180, top: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18,),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GoLive()));
                    },
                    child: Text(
                      "Go Live",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),

               SizedBox(height: 30,),

               Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, this.action);
                    },
                    child: Image.asset(
                      image,
                      width: width * 0.9,
                    ),
                  ),
                ),
              ),

            SizedBox(
              height: 25,
            ),
            Container(
              height: 50.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, this.action);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
                  child: Container(
                    decoration: BoxDecoration(

                      border: Border.all(
                        color: Colors.grey[900],
                        style: BorderStyle.solid,
                        width: 3,
                      ),
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.grey[300],
                              letterSpacing: 2,
                              fontFamily: 'RoobertTRIAL-Regular',
                              // fontFamily: 'Montserrat',
                              fontSize: 28,

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 80),
            //   child: Text(
            //     description,
            //     style: TextStyle(
            //       height: 1.5,
            //       fontWeight: FontWeight.normal,
            //       fontSize: 14,
            //       letterSpacing: 0.7,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            // SizedBox(
            //   height: 60,
            // ),
          ],
        ),
      ),
    );
  }
}