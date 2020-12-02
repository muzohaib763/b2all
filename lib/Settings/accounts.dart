import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: IconButton(
            icon: Icon(
              Feather.chevron_left,
              color: Colors.grey[300],
              size: 45,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only( top: 10),
          child: Text(
            'Account',
            style: TextStyle(
              color: Colors.grey[300],
              letterSpacing: 1,
              fontFamily: 'RoobertTRIAL-Regular',
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Divider(
                    height: 10,
                    color: Colors.grey[700],
                  ),
                ),
                new Wrap(
                  children: [
                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            FontAwesome.language,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Language',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            Fontisto.info,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Personal Information',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {}),
                    ),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                          leading: new Icon(
                            MaterialCommunityIcons.face_profile,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          title: new Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey[300],
                              letterSpacing: 0.5,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () => {

                            Navigator.pushNamed(context, '/**********EditProfile'),
                          }),
                    ),

                  ],
                ),
              ],
            )
          ],
        ),

      ),

    );
  }
}


