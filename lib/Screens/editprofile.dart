import 'package:business_2_all/Screens/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10, top: 10),
        //   child: GestureDetector(
        //     onTap: () {
        //       //Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
        //     },
        //     child: Icon(
        //       Icons.close_rounded,
        //       size: 30,
        //       color: Colors.white,
        //       // add custom icons also
        //     ),
        //   ),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 17, 23, 0),
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.grey[300],
                letterSpacing: 0.1,
                fontFamily: 'RoobertTRIAL-Regular',
                fontSize: 21,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top:20),
                child: Row(
                  children: [
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.grey[300],
                        letterSpacing: 0.1,
                        fontFamily: 'RoobertTRIAL-Regular',
                        fontSize: 27,
                        // fontWeight: FontWeight.bold,
                        // letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 40),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/accountpic.PNG'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            heightFactor: 15,
                            widthFactor: 15,
                            child: Icon(
                              Icons.phone_enabled_sharp,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.grey[600],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.grey[300],
                            letterSpacing: 0.1,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontSize: 21,
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, top: 18),
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            child: TextField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.lightBlueAccent,
                                hintText: 'Ahlam',
                                hintStyle: TextStyle(
                                  fontSize: 21,
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160, right: 15),
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Bio',
                          style: TextStyle(
                            color: Colors.grey[300],
                            letterSpacing: 0.1,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontSize: 21,
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70, top: 18),
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            child: TextField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.lightBlueAccent,
                                hintText: 'Hi Welcome to B2A',
                                hintStyle: TextStyle(
                                  fontSize: 21,
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160, right: 15),
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          'Phone',
                          style: TextStyle(
                            color: Colors.grey[300],
                            letterSpacing: 0.1,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontSize: 21,
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 43, top: 18),
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            child: TextField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.lightBlueAccent,
                                hintText: '03088341883',
                                hintStyle: TextStyle(
                                  fontSize: 21,
                                  color: Colors.grey[300],
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160, right: 15),
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey[600],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [

                   Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                         Navigator.pushNamed(context, '/****Home');
                        },
                        child: Text(
                          'Jump to Home Screen',
                          style: TextStyle(
                            color: Colors.grey[600],
                            //letterSpacing: 0.1,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ),
                      ]

                  )
                ],
              )

            ],
          ),
      ),

    );
  }
}


