import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,

        title:  Padding(
          padding: const EdgeInsets.only(left: 2, top: 10),
          child: Text('Favorite',
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Row(
                children: [
                  Text('Following',
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 0.3,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 220,
                child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 190,
                          width: 150,
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
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Row(
                children: [
                  Text('Recommended Booths',
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 0.3,
                      fontFamily: 'RoobertTRIAL-Regular',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Flexible(
              child: Row(
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
                            color: Colors.grey[700],
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, left: 0),
                        child: Text(
                          'Beats thats make you energetic',
                          style: TextStyle(
                            color: Colors.grey[700],
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
              ),
            ),
            SizedBox(height: 10,),
            Flexible(
              child: Row(
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
                        padding: const EdgeInsets.only(bottom: 0, right: 65, left: 5, top: 15),
                        child: Text(
                          'Abdullah Manzoor',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'RoobertTRIAL-Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, left: 5),
                        child: Text(
                          'Beats thats make you energetic',
                          style: TextStyle(
                            color: Colors.grey[700],
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
              ),
            ),


          ],
        ),

      ),
    );
  }
}
