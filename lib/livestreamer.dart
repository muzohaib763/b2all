import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LiveStremerNow extends StatefulWidget {
  @override
  _LiveStremerNowState createState() => _LiveStremerNowState();
}

class _LiveStremerNowState extends State<LiveStremerNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/accountpic.PNG",
              fit: BoxFit.fitHeight,
              height: 800,
              width: 500,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50, ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 21),
                      child: IconButton(icon: Icon(
                        Feather.chevron_left,
                        color: Colors.white,
                        size: 50,
                      ), onPressed: () {
                        Navigator.of(context).pop();
                      } ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24,),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                          },
                          child: Text(
                            "Live",
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 3,
                              fontFamily: 'RoobertTRIAL-Regular',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24,),
                      child: Row(
                        children: [
                          Icon(

                            Icons.person,
                            color: Colors.white,
                            size: 21,
                          ),
                           SizedBox(width: 5,),
                           Text(
                                "302",
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 3,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),



                        ],
                      )
                    ),


                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 430,
                  child: TextField(
                    onChanged: (value) {},
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(color: Colors.grey[300], fontSize: 18),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top:10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(10.0),
                          topRight: const  Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey[900], width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(10.0),
                          topRight: const  Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey, width: 2.0,
                        ),
                      ),
                      prefixIcon:  Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Entypo.emoji_happy,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: "Type your comment here",
                      fillColor: Colors.grey[900],
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[300],),

                      suffixIcon: Icon(
                        Feather.send,
                        color: Colors.white,
                      )
                    ),

                  ),
                ),
              ],
            ),
          )

        ],
      ),

    );
  }
}
