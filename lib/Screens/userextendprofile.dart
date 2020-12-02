import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class UserExtendProfile extends StatefulWidget {
  @override
  _UserExtendProfileState createState() => _UserExtendProfileState();
}

class _UserExtendProfileState extends State<UserExtendProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: IconButton(
            icon: Icon(
              Feather.chevron_left,
              color: Colors.grey[300],
              size: 40,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only( top: 10, right: 35),
          child: Center(
            child: Text(
              'Abdullah Manzoor',
              style: TextStyle(
                color: Colors.grey[300],
                letterSpacing: 1,
                fontFamily: 'RoobertTRIAL-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),

            ),
          ),
        ),
      ),

      body: Stack(
        children: <Widget>[


          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,),
              decoration: BoxDecoration(
                  color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Row(
                          children: <Widget>[

                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage("assets/abdullah.png"),
                            ),

                            SizedBox(
                              width: 12,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  "Abdullah Manzoor",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[300],
                                    letterSpacing: 0.1,
                                    fontFamily: 'RoobertTRIAL-Regular',
                                  ),
                                ),

                                SizedBox(
                                  height: 4,
                                ),

                                Text(
                                  "Streamer",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                    letterSpacing: 0.5,
                                    fontFamily: 'RoobertTRIAL-Regular',
                                  ),
                                ),

                              ],
                            )

                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24,),
                          child: Center(
                            child: InkWell(
                              onTap: () {

                              },
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),


                  SizedBox(height: 8,),

                  Divider(
                    color: Colors.grey[600],
                  ),

                  Container(
                    height: 64,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Container(
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "Videos",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  letterSpacing: 1,
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "32",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  fontSize: 22,

                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "FOLLOWING",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "1k",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "FOLLOWER",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "50k",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  fontSize: 22,

                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.grey[600],
                  ),
                  SizedBox(height: 10,),

                  Text(
                    "Recommended Live Booths",
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 1,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 25,
                    ),
                  ),

                  Container(
                    height: 100,
                    child: ListView.builder(
                        padding: EdgeInsets.all(8),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 76,
                              width: 76,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/a" + index.toString() + ".jpg"),
                                  )
                              )
                          );
                        }
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  Text(
                    "Abdullah Videos",
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 1,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 25,

                    ),
                  ),

                  Container(
                    height: 280,
                    child: ListView.builder(
                        padding: EdgeInsets.all(8),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 160,
                              width: 200,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/a" + index.toString() + ".jpg"),
                                  )
                              )
                          );
                        }
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
