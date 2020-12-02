import 'package:business_2_all/Settings/accounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SetExtend extends StatefulWidget {
  @override
  _SetExtendState createState() => _SetExtendState();
}

class _SetExtendState extends State<SetExtend> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            'Settings',
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
                    new ListTile(
                        leading: new Icon(
                          Feather.lock,
                          size: 30,
                          color: Colors.grey[300],
                        ),
                        title: new Text(
                          'Privacy',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[300],
                            letterSpacing: 0.5,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () => {

                        }),

                    Theme(
                      data: ThemeData(
                        highlightColor: Colors.grey[500],
                      ),
                      child: new ListTile(
                        leading: new Icon(
                          AntDesign.user,
                          //FontAwesome.user_circle_o,
                          size: 30,
                          color: Colors.grey[300],
                        ),
                        title: new Text(
                          'Accounts',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[300],
                            letterSpacing: 0.5,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () => {
                          print('clicked'),
                          Navigator.pushNamed(context,  '/*****Accounts')
                        },),
                    ),

                    new ListTile(
                        leading: new Icon(
                          Feather.shield,
                          //FontAwesome.user_circle_o,
                          size: 30,
                          color: Colors.grey[300],
                        ),
                        title: new Text(
                          'Security',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[300],
                            letterSpacing: 0.5,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () => {
                          Navigator.pushNamed(context, '/*****Security')
                        }),

                    new ListTile(
                        leading: new Icon(
                          Feather.smartphone,
                          //FontAwesome.user_circle_o,
                          size: 30,
                          color: Colors.grey[300],
                        ),
                        title: new Text(
                          'Dark Theme',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[300],
                            letterSpacing: 0.5,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () => {}),

                    new ListTile(
                        leading: new Icon(
                          Feather.help_circle,
                          //FontAwesome.user_circle_o,
                          size: 30,
                          color: Colors.grey[300],
                        ),
                        title: new Text(
                          'Help and Support',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[300],
                            letterSpacing: 0.5,
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () => {}),
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
