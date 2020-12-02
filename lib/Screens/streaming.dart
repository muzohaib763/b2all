import 'package:business_2_all/Screens/Category/LiveComCat/Components/data.dart';
import 'package:business_2_all/Screens/golive.dart';
import 'package:business_2_all/Screens/home.dart';
import 'package:flutter/material.dart';

class Streaming extends StatefulWidget {
  @override
  _StreamingState createState() => _StreamingState();
}

class _StreamingState extends State<Streaming> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Center(
            child: Text(
              'Abdullah123',
              style: TextStyle(
                color: Colors.grey[300],
                letterSpacing: 0.1,
                fontFamily: 'RoobertTRIAL-Regular',
                fontSize: 25,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () { /* Write listener code here */ },
          child: Padding(
            padding: const EdgeInsets.only(top: 17, left: 15),
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        backgroundColor: Colors
                            .grey[900],
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(15.0),
                        ),

                        //this right here yaha sa shuru hota
                        child: Container(
                          height: 155,
                          width: 350,
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 13, left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      'Live Category',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.grey[300],
                                        letterSpacing: 1,
                                        fontFamily: 'RoobertTRIAL-Regular',
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                               Padding(
                                  padding: const EdgeInsets.only(top: 7, left: 15, right: 15),
                                  child: Text(
                                    'Are you sure want to cancel Live Category video.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[300],
                                      letterSpacing: 1,
                                      fontFamily: 'RoobertTRIAL-Regular',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),

                              //SizedBox(height: 8,),

                        Padding(
                                padding: const EdgeInsets.only(left: 110),
                                child: Row(
                                    children: [

                                      FlatButton(
                                        //textColor: Color(0xFF6200EE),
                                        onPressed: () {
                                          Navigator.of(context).pop();

                                        },
                                        child: Text('CANCEL',
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.red,
                                          letterSpacing: 0.1,
                                          fontFamily: 'RoobertTRIAL-Regular',
                                        ),

                                        ),
                                      ),
                                      FlatButton(

                                       // textColor: Color(0xFF6200EE),
                                        onPressed: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                                        },
                                        child: Text('ACCEPT',
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.red,
                                          letterSpacing: 0.1,
                                          fontFamily: 'RoobertTRIAL-Regular',

                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),






                            ],

                          ),
                        ),
                      );
                    });
              },
              child: Text(
               'END',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 21,
                  //letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
                ),
                //textAlign: TextAlign.left,
                // add custom icons also
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea( // idhr sa shuru krna
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: GestureDetector(
                  onTap: () {

                    Navigator.pushNamed(context, '/*****LiveStreamerNow');
                  },
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/accountpic.PNG"),
                        fit: BoxFit.cover,
                      ),
                    ),
              ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Text(
                      '0 Viewers',
                      style: TextStyle(
                        color: Colors.yellow,
                        letterSpacing: 0.1,
                        fontFamily: 'RoobertTRIAL-Regular',
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '&',
                        style: TextStyle(
                          color: Colors.yellow,
                          letterSpacing: 0.1,
                          fontFamily: 'RoobertTRIAL-Regular',
                          fontSize: 18,
                        ),
                      ),
                    ),

                    SizedBox(width: 15,),

                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Time:',
                        style: TextStyle(
                          color: Colors.red,
                          letterSpacing: 0.1,
                          fontFamily: 'RoobertTRIAL-Regular',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),

                    Text(
                      '1 hour',
                      style: TextStyle(
                        color: Colors.yellow,
                        letterSpacing: 0.1,
                        fontFamily: 'RoobertTRIAL-Regular',
                        fontSize: 16,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {

                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 3,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text(
                                      'Chat',
                                      style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 1,
                                        fontFamily: 'RoobertTRIAL-Regular',
                                        // fontFamily: 'Montserrat',
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Welcome Abdullah123 to Your Chat Room',
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                      letterSpacing: 0.1,
                                      fontFamily: 'RoobertTRIAL-Regular',
                                      fontSize: 19,

                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 250,
                          child: Card(
                            //margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                            color: Colors.grey[900],

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                        'assets/abdullah.png'),
                                                        fit: BoxFit.cover),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(75.0)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 2,
                                                          color: Colors.white)
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 35,),
                                          child: Text(
                                            "Abdullah Manzoor : Hi Welcome to B2A",
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              letterSpacing: 0.1,
                                              fontFamily: 'RoobertTRIAL-Regular',
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/stick.PNG'),
                                                        fit: BoxFit.cover),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(75.0)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 2,
                                                          color: Colors.white)
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 35,),
                                          child: Text(
                                            "Zohaib : Hi",
                                            style: TextStyle(
                                              color: Colors.grey[300],
                                              letterSpacing: 0.1,
                                              fontFamily: 'RoobertTRIAL-Regular',
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),



                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
