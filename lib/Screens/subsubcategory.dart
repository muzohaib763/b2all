import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SubSubCategory extends StatefulWidget {
  @override
  _SubSubCategoryState createState() => _SubSubCategoryState();
}

class _SubSubCategoryState extends State<SubSubCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/accountpic.PNG"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
                            child: Container(
                              height: 50,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      'Chats',
                                      style: TextStyle(
                                        color: Colors.white,
                                        // fontFamily: 'Montserrat',
                                        fontSize: 23,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 240, right: 5),
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                backgroundColor: Colors
                                                    .grey[900],
                                                shape: RoundedRectangleBorder(
                                                   borderRadius:
                                                  BorderRadius.circular(20.0),
                                                ), //this right here
                                                child: Container(
                                                  height: 200,
                                                  child: Column(
                                                    children: [
                                                      Center(
                                                        child: Padding(
                                                          padding: const EdgeInsets
                                                              .only(top: 10),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Icon(Icons
                                                                  .card_giftcard_outlined,
                                                                size: 25,
                                                                color: Colors.white,

                                                              ),

                                                              //backgroundColor: Colors.grey[900],
                                                              SizedBox(
                                                                width: 10,),
                                                              Text(
                                                                'GIFT',
                                                                style: TextStyle(
                                                                  color: Colors.white,

                                                                  fontSize: 21,
                                                                  letterSpacing: 1,

                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .only(top: 2,
                                                            left: 20,
                                                            right: 20),
                                                        child: Divider(
                                                          color: Colors
                                                              .grey[600],
                                                        ),
                                                      ),
                                                      SizedBox(height: 5,),
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            SelectableText(
                                                              '\$1',
                                                              style: TextStyle(
                                                                color: Colors.yellowAccent,

                                                                fontSize: 19,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 30,),
                                                            SelectableText(
                                                              '\$5',
                                                              style: TextStyle(
                                                                color: Colors.yellowAccent,

                                                                fontSize: 19,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 30,),
                                                            SelectableText(
                                                              '\$10',
                                                              style: TextStyle(
                                                                color: Colors.yellowAccent,

                                                                fontSize: 19,
                                                              ),
                                                            ),
                                                          ],

                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .all(12.0),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 20),
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                    border: InputBorder
                                                                        .none,
                                                                    hintText: 'Enter Your Desire Money',
                                                                    hintStyle: TextStyle(
                                                                      color: Colors.white,
                                                                    )),
                                                              ),
                                                            ),

                                                            SizedBox(
                                                                width: 280.0,
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      top: 5,
                                                                      right: 30,
                                                                      left: 130),
                                                                  child: Container(
                                                                    alignment: Alignment
                                                                        .bottomRight,
                                                                    height: 30,
                                                                    width: MediaQuery
                                                                        .of(
                                                                        context)
                                                                        .size
                                                                        .width,
                                                                    decoration: BoxDecoration(
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: Colors
                                                                              .pinkAccent,
                                                                          blurRadius: 4.0,
                                                                          // has the effect of softening the shadow
                                                                          spreadRadius: 0.5,
                                                                          // has the effect of extending the shadow
                                                                          offset: Offset(
                                                                            3.0,
                                                                            // horizontal, move right 10
                                                                            3.0, // vertical, move down 10
                                                                          ),
                                                                        ),
                                                                      ],
                                                                      color: Colors
                                                                          .deepPurple,
                                                                      borderRadius: BorderRadius
                                                                          .circular(
                                                                          30),
                                                                    ),
                                                                    child: FlatButton(
                                                                      onPressed: () {
                                                                      },
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment
                                                                            .center,
                                                                        children: <
                                                                            Widget>[
                                                                          Text(
                                                                            'Send Gifts',
                                                                            style: TextStyle(
                                                                              color: Colors
                                                                                  .white,
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight
                                                                                  .w800,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],

                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: Icon(
                                        Icons.card_giftcard_outlined,
                                        size: 30,
                                        color: Colors.yellowAccent,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                              backgroundColor: Colors
                                                  .grey[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                              ), //this right here
                                              child: Container(
                                                height: 200,
                                                child: Column(
                                                  children: [
                                                    Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .only(top: 10),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .center,
                                                          children: [

                                                            Text(
                                                              'Make Payment',
                                                              style: TextStyle(
                                                                color: Colors.white,

                                                                fontSize: 21,
                                                                letterSpacing: 1,

                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),


                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .only(top: 2,
                                                          left: 20,
                                                          right: 20),
                                                      child: Divider(
                                                        color: Colors
                                                            .grey[600],
                                                      ),
                                                    ),

                                                    SizedBox(height: 5,),



                                                    Flexible(
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(
                                                          left: 0,
                                                          right: 0,
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                                          child: Card(
                                                            //margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                                                            color: Colors.grey[900],

                                                            child: Row(
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
                                                                            width: 60.0,
                                                                            height: 60.0,
                                                                            decoration: BoxDecoration(
                                                                                color: Colors.black,
                                                                                image: DecorationImage(
                                                                                    image: AssetImage(
                                                                                        'assets/accountpic.PNG'),
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
                                                                Padding(
                                                                  padding: const EdgeInsets.only(top: 20),
                                                                  child: Column(
                                                                    children: [
                                                                      Text(
                                                                        "Live Commerce",
                                                                        style: TextStyle(
                                                                          color: Colors.white,
                                                                          fontSize: 18,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 7,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(right: 21),
                                                                        child: Text(
                                                                          "Live Shopping",
                                                                          style: TextStyle(
                                                                            color: Colors.lightGreen,
                                                                            fontSize: 14,
                                                                            letterSpacing: 1,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    // Button ka code ha

                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .all(12.0),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .center,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        children: [

                                                          SizedBox(
                                                            width: 280.0,
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                  .only(
                                                                  top: 0,
                                                                  right: 30,
                                                                  left: 130),
                                                              child: Container(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                height: 30,
                                                                width: MediaQuery
                                                                    .of(
                                                                    context)
                                                                    .size
                                                                    .width,
                                                                decoration: BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .pinkAccent,
                                                                      blurRadius: 4.0,
                                                                      // has the effect of softening the shadow
                                                                      spreadRadius: 0.5,
                                                                      // has the effect of extending the shadow
                                                                      offset: Offset(
                                                                        3.0,
                                                                        // horizontal, move right 10
                                                                        3.0, // vertical, move down 10
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  color: Colors
                                                                      .deepPurple,
                                                                  borderRadius: BorderRadius
                                                                      .circular(
                                                                      30),
                                                                ),
                                                                child: FlatButton(
                                                                  onPressed: () {
                                                                  },
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment
                                                                        .center,
                                                                    children: <
                                                                        Widget>[
                                                                      Text(
                                                                        'Buy',
                                                                        style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize: 18,
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],

                                                ),
                                              ),
                                            );
                                          });

                                    },
                                    child: Icon(
                                      Icons.bookmark_border_outlined,
                                      size: 30,
                                      color: Colors.yellowAccent,
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
                              Text(
                                'Welcome to Category Chat Room',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  //letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 250,
                          child: Card(
                            margin: EdgeInsets.only(left: 10, right: 10),
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
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/abdullah.png'),
                                                        fit: BoxFit.cover),
                                                    borderRadius: BorderRadius
                                                        .all(
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
                                          padding: const EdgeInsets.only(
                                            right: 35,
                                          ),
                                          child: Text(
                                            "Abdullah Manzoor : Hi Welcome to B2A",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
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
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/stick.PNG'),
                                                        fit: BoxFit.cover),
                                                    borderRadius:
                                                    BorderRadius.all(
                                                        Radius.circular(
                                                            75.0)),
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
                                          padding: const EdgeInsets.only(
                                            right: 35,
                                          ),
                                          child: Text(
                                            "Zohaib : Hi",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
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
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Followers only Chat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 20, right: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        //color: Colors.grey[900],
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,

                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.lightBlueAccent,
                            // hintText: 'E-mail',
                            // hintStyle: TextStyle(
                            //   color: Colors.white,
                            // ),

                            labelText: 'Type Message Here...',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: Colors.white, width: 2.0),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.lightBlue,
                            //     width: 2.0,
                            //   ),
                            // ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),


                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.black,
                      ),

                    ),
                  ),
                ],
              ), //yaha likhna shuru krna
            ],
          ),
        ),
      ),
    );
  }
}
