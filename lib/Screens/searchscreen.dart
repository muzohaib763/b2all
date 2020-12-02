import 'package:business_2_all/SettingsWidget/search_list_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSearching = false;

  List<String> searchImageURL = [
    "assets/a4.jpg",//1
    "assets/a5.jpg",//2
    "assets/a6.jpg",//3
    "assets/a7.jpg",//4
    "assets/a8.jpg",//5
    "assets/a10.jpg",//6
    "assets/a2.jpg",//7
    "assets/a3.jpg",//8
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
        title: Container(
          height: 40,
          width: 320,
          child: TextField(
            onChanged: (value) {},
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: Colors.grey[300], fontSize: 18),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top:10),
              enabledBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.only(
                  topLeft:  const  Radius.circular(10.0),
                  topRight: const  Radius.circular(10.0),
                  bottomLeft: const Radius.circular(10.0),
                  bottomRight: const Radius.circular(10.0),
                ),
                borderSide: BorderSide(color: Colors.grey[900], width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.only(
                  topLeft:  const  Radius.circular(10.0),
                  topRight: const  Radius.circular(10.0),
                  bottomLeft: const Radius.circular(10.0),
                  bottomRight: const Radius.circular(10.0),
                ),
                borderSide: BorderSide(
                  color: Colors.blueGrey, width: 2.0,
                ),
              ),
              prefixIcon:  Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  Feather.search,
                  color: Colors.white,
                ),
              ),
              border: InputBorder.none,
              hintText: "Search Streamer Here",
              fillColor: Colors.grey[900],
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[300],),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:16, right: 7),
            child: InkWell(
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.grey[300],
                  letterSpacing: 1,
                  fontFamily: 'RoobertTRIAL-Regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              onTap: () {/*write code here*/},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Recommended Searchs",
                  style: TextStyle(
                    color: Colors.grey[300],
                    letterSpacing: 0.1,
                    fontFamily: 'RoobertTRIAL-Regular',
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //let's create a new custom widget for our list item
                    searchListItem(searchImageURL[0], "Abdullah"),
                    searchListItem(searchImageURL[1], "Zohaib"),
                    searchListItem(searchImageURL[2], "Ahlam"),
                    searchListItem(searchImageURL[3], "John"),
                    searchListItem(searchImageURL[4], "Aisha"),
                    searchListItem(searchImageURL[5], "Katrina"),
                    searchListItem(searchImageURL[6], "Mia"),
                    searchListItem(searchImageURL[7], "Asghar"),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Row(
                  children: [
                    Text('Recommended Streamers',
                      style: TextStyle(
                        color: Colors.grey[300],
                        letterSpacing: 0.1,
                        fontFamily: 'RoobertTRIAL-Regular',
                        fontSize: 28,
                        //fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                        height: 190,
                        width: 150,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/accountpic.PNG"),
                            )
                        )
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0, right: 65, left: 0, top: 15),
                        child: Text(
                          'Abdullah Manzoor',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150, left: 0),
                        child: Text(
                          'Beats thats make you energetic',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                    ),
                  )


                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
