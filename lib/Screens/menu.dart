import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:top_sheet/top_sheet.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.deepPurple,
              letterSpacing: 3,
              fontFamily: 'Bluemoon',
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Feather.more_vertical,
                color: Colors.grey[700],
                size: 30,
              ),
              onPressed: () {
                TopSheet.show(

                  context: context,
                  child: Container(
                    color:  Colors.grey[900],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Feather.log_out,
                          size: 30,
                          color: Colors.grey[300],),
                          title: Text('Logout',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 30,
                          ),),
                          onTap: () {
                            Navigator.pushNamed(context, '/***Login');
                          },
                        ),
                      ],
                    ),
                  ),
                  direction: TopSheetDirection.TOP,
                );

              },
            )
          ],
      ),
      //extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    bottom: 5,
                  ),
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
                                  letterSpacing: 0.1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Edit your profile",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                  letterSpacing: 0.5,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Divider(
                    height: 10,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 30,),

                new Wrap(
                  children: [
                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.settings,
                            size: 30,
                            color: Colors.grey[300],

                          ),
                          title: new Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {
                            Navigator.pushNamed(context, '/*****SetExtend')
                          },
                       // selected: selectedFriends.contain(string),
                        //selectedTileColor: Colors.pink,

                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.bell,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Notifications',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),
                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.tv,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Your Activity',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            SimpleLineIcons.wallet,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Memberships',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.dollar_sign,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Monetization',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.users,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Discover Streamers',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.tv,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Ads',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),


                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.alert_circle,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            AntDesign.gift,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Wallet',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 10,
                        color: Colors.grey[700],
                      ),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Feather.info,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'About Us',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),


                  ],
                )




              ],

            ),






          ],
        ),
      ),
    );
  }
}

