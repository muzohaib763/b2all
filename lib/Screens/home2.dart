import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {

             Navigator.pushNamed(context, '/***********SearchBar');
            },
            child: Icon(
              Entypo.bell,
              size: 30,
              color: Colors.grey[700],
              // add custom icons also
            ),
          ),
          title: Center(
            child: Image.asset(
              'assets/logob.png',
              fit: BoxFit.contain,
              height: 50,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Feather.search,
                color: Colors.grey[700],
                size: 30,
              ),
              onPressed: () {


                Navigator.pushNamed(context, '/*****SearchScr');
              },
            )
          ],
        ),

      body: ListView(

          children: [

            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
              children: [
                Text('Advertisement',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey[300],
                    fontFamily: 'RoobertTRIAL-Regular',
                  ),

                ),
              ],
              ),
            ),

            Container(
              height: 180,
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,

                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 160,
                        width: 130,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/a" + index.toString() + ".jpg",),
                            ),
                        ),
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Streaming',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[300],
                                letterSpacing: 0.1,
                                fontFamily: 'RoobertTRIAL-Regular',
                                fontSize: 22.0),
                          ),
                      ),
                    );
                  }
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 5,
                color: Colors.grey[700],
              ),
            ),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/a7.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),


                  ),

                ),


              SizedBox(
                height: 15,
              ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [

              Text(
                'Live Entertainment',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey[300],
                  letterSpacing: 0.1,
                  fontFamily: 'RoobertTRIAL-Regular',
                ),
              ),

            ],
          ),
        ),
            SizedBox(height: 10,),
           Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/a6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),


                ),

              ),


            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [

                  Text(
                    'John Live Stream',
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 0.1,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 24,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),

           Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/a3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),


                ),

              ),


            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [

                  Text(
                    'Live Music',
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 0.1,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 24,
                    ),
                  ),

                ],
              ),
            ),









          ],

        ),


    );
  }
}
