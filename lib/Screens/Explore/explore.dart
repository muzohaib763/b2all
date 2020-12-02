import 'package:business_2_all/Screens/Explore/Components/list_item.dart';
import 'package:business_2_all/Screens/Explore/Components/slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixApp(),
    );
  }
}

class NetflixApp extends StatefulWidget {
  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  //Here I'm going to place some dummy data for our movie images url and movie's titles
  //You can found all then links and the source code in the link bellow in the description
  //don't forget to subscribe

  List<String> movieCarousselUrl = [
  "assets/greyexploresliderfirst.jpg",
  "assets/greyexploreslidersecond.jpg",
  "assets/greyexploresliderthird.jpg",
  "assets/greyexploresliderfourth.jpg",

  ];
  List<String> movieTitle = [
    "Live Entertainment",
    "Live Cooking",
    "Live Commerce",
    "Live Hall"
  ];
  List<String> movieImageUrl = [
    "assets/a6.jpg",//3
    "assets/a7.jpg",//4
    "assets/a8.jpg",//5
    "assets/a10.jpg",//6
    "assets/a2.jpg",//7
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: Text(
            'Explore',
            style: TextStyle(
              color: Colors.deepPurple,
              letterSpacing: 3,
              fontFamily: 'Bluemoon',
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
      ),


      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 1),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            //let's start by building our carousel slider
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Your Favorite",
                  style: TextStyle(
                    color: Colors.grey[300],
                    letterSpacing: 0.3,
                    fontFamily: 'RoobertTRIAL-Regular',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Your FavoriteLive Booths',
                  style: TextStyle(
                    color: Colors.grey[700],
                    letterSpacing: 0.3,
                    fontFamily: 'RoobertTRIAL-Regular',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),

                ),
              ),
              SizedBox(
                height: 12,
              ),

              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  height: 280.0,
                  enlargeCenterPage: true,
                ),
                items: [
                  sliderItem(movieCarousselUrl[0], movieTitle[0]),
                  sliderItem(movieCarousselUrl[1], movieTitle[1]),
                  sliderItem(movieCarousselUrl[2], movieTitle[2]),
                  sliderItem(movieCarousselUrl[3], movieTitle[3]),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Your Favorite Streamer',
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 0.3,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 180.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //let's create a new custom widget for our list item
                    GestureDetector(child: listItem(movieImageUrl[0],  "Ali Usman"),
                      onTap: () {
                      Navigator.pushNamed(context, '/*****UserExtendPro');
                      },

                    ),
                    listItem(movieImageUrl[1],  "Abdullah Manzoor"),
                    listItem(movieImageUrl[2], "Muhammad Zohaib"),
                    listItem(movieImageUrl[3],  "Ahlam"),
                    listItem(movieImageUrl[4], "Jack"),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('Your Favorite Events',
                  style: TextStyle(
                    color: Colors.grey[300],
                    letterSpacing: 0.3,
                    fontFamily: 'RoobertTRIAL-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/greyexploreslidersecond.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                  padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Cooking',
                  style: TextStyle(
                    color: Colors.grey[700],
                    letterSpacing: 0.1,
                    fontFamily: 'RoobertTRIAL-Regular',
                    fontSize: 24,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
