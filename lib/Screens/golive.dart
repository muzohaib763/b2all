import 'package:business_2_all/Screens/streaming.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class GoLive extends StatefulWidget {
  GoLive() : super();
  final String title = "DropDown Demo";

  @override
  _GoLiveState createState() => _GoLiveState();
}

class GoLiveCategory {
  int id;
  String name;

  GoLiveCategory(this.id, this.name);

  static List<GoLiveCategory> getCategories() {
    return <GoLiveCategory> [
      GoLiveCategory(1, 'Private Parties'),
      GoLiveCategory(2, 'Art'),
      GoLiveCategory(3, 'Music'),
      GoLiveCategory(4, 'Food & Drink'),
      GoLiveCategory(5, 'Live Commerce'),
      GoLiveCategory(6, 'Live Hall'),
      GoLiveCategory(7, 'Entertainment'),

    ];
  }

}

class _GoLiveState extends State<GoLive> {

  List<GoLiveCategory> _livecategories = GoLiveCategory.getCategories();
  List<DropdownMenuItem<GoLiveCategory>> _dropdownMenuItems;
  GoLiveCategory _selectedCategories;

  @override
  void initState() {
    _dropdownMenuItems = buildDropDownMenuItems(_livecategories);
    _selectedCategories = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<GoLiveCategory>> buildDropDownMenuItems(List categories) {
    List<DropdownMenuItem<GoLiveCategory>> items = List();
    for(GoLiveCategory category in categories) {
      items.add(DropdownMenuItem(value: category, child: Text(category.name),),);
    }
    return items;
  }

  onChangedDropdownitem(GoLiveCategory selectedCategories) {
    setState(() {
      _selectedCategories = selectedCategories;

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
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
          title: Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Center(
              child: Text('Streamer Setup',
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
          // leading: GestureDetector(
          //   onTap: () { /* Write listener code here */ },
          //   child: Icon(
          //     Icons.close_rounded,
          //     size: 30,
          //     color: Colors.white,
          //     // add custom icons also
          //   ),
          // ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
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
                                    width: 100.0,
                                    height: 100.0,
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
                        Column(
                          children: [
                            Text(
                              "Abdullah Manzoor",
                              style: TextStyle(
                                color: Colors.grey[300],
                                letterSpacing: 0.1,
                                fontFamily: 'RoobertTRIAL-Regular',
                                fontSize: 23,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 21),
                              child: Text(
                                "is ready to be online",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  color: Colors.lightGreen,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: [
                              Text(
                                'Streamer Category',
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  letterSpacing: 0.5,
                                  fontFamily: 'RoobertTRIAL-Regular',
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9, right: 9),
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[900],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10, top: 5),
                              child: DropdownButton(
                                isExpanded: true,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.grey[900],
                                value: _selectedCategories,
                                items: _dropdownMenuItems,
                                underline: Container(color: Colors.transparent),
                                onChanged: onChangedDropdownitem,
                                iconSize: 30,
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                        'Selected:',
                                        style: TextStyle(
                                          color: Colors.grey[300],
                                          letterSpacing: 1,
                                          fontFamily: 'RoobertTRIAL-Regular',
                                        fontSize: 21,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    '${_selectedCategories.name}',
                                    style: TextStyle(
                                      letterSpacing: 0.1,
                                      fontFamily: 'RoobertTRIAL-Regular',
                                      color: Colors.yellow,
                                      fontSize: 21,
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
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
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Streaming()));
                                      },
                                      child: Text(
                                        'Start Stream',
                                        style: TextStyle(
                                          color: Colors.black,
                                          letterSpacing: 1,
                                          fontFamily: 'RoobertTRIAL-Regular',
                                          // fontFamily: 'Montserrat',
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
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
    );
  }
}
