import 'package:business_2_all/Screens/editprofile.dart';
import 'package:business_2_all/Screens/golive.dart';
import 'package:business_2_all/Screens/loginpage.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: Text(
            'Profile',
            style: TextStyle(
              color: Colors.deepPurple,
              letterSpacing: 3,
              fontFamily: 'Bluemoon',
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),

          ),
        ),
      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leading: GestureDetector(
      //     onTap: () { /* Write listener code here */ },
      //     child: Icon(
      //       Icons.close_rounded,
      //       size: 30,
      //       color: Colors.white,
      //       // add custom icons also
      //     ),
      //   ),
      //
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 2),
      //     child: Text(
      //       "My Channel",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 19,
      //       ),
      //     ),
      //   ),
      //   centerTitle: true,
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.fromLTRB(17, 18, 8, 0),
      //       child: Text(
      //         'Edit Profile',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 17,
      //         ),
      //       ),
      //     ),
      //
      //
      //   ],
      // ),
      body: Stack(
        children: <Widget>[

          // Center(
          //   child: Image.asset(
          //     "assets/accountpic.PNG",
          //     fit: BoxFit.cover,
          //     width: size.width,
          //     height: size.height,
          //   ),
          // ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(25),
                    // topRight: Radius.circular(25),
                  )
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
                                    color: Colors.grey[700],
                                    letterSpacing: 0.3,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => GoLive()));
                              },
                              child: Text(
                                "Go Live",
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  color: Colors.lightGreen,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

            Padding(
              padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Container(
                height: 42.0,
                child: GestureDetector(
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[700],
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Colors.grey[700],
                                letterSpacing: 1,
                                fontFamily: 'RoobertTRIAL-Regular',
                                fontSize: 22,

                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
                                  color: Colors.grey[700],
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
                                  color: Colors.grey[700],
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
                                  color: Colors.grey[700],
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

                  Text(
                    "Live Booths",
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 2,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    height: 70,
                    child: ListView.builder(
                        padding: EdgeInsets.all(8),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 56,
                              width: 56,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
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
                    "Videos",
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 2,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 21,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                  Container(
                    height: 160,
                    child: ListView.builder(
                        padding: EdgeInsets.all(8),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 160,
                              width: 110,
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
