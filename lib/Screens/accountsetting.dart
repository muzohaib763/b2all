import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AccountSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () { /* Write listener code here */ },
            child: Icon(
              Icons.close_rounded,
              size: 30,
              color: Colors.white,
              // add custom icons also
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 13, 20, 0),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),


          ],
        ),
      backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(

            children: [
              Container(
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: NetworkImage(
                //             "add you image URL here "
                //         ),
                //         fit: BoxFit.cover
                //     )
                // ),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    alignment: Alignment(0.0,0),
                    child: CircleAvatar(
                      radius: 63,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/accountpic.PNG'
                        ),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Ahlam",
                style: TextStyle(
                  fontSize: 25.0,
                  color:Colors.white,
                  letterSpacing: 2.0,
              ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Online",
                  style: TextStyle(
                  fontSize: 18,
                  color:Colors.green,

              ),
              ),
              SizedBox(
                height: 10,
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Followers",
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 22.0,

                              ),),
                            SizedBox(
                              height: 7,
                            ),
                            Text("50k",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                              ),)
                          ],
                        ),
                      ),
                      Expanded(
                        child:
                        Column(
                          children: [
                            Text("Following",
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 22.0,

                              ),),
                            SizedBox(
                              height: 7,
                            ),
                            Text("1328",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,

                              ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                              padding: const EdgeInsets.fromLTRB(10,0,0,0),
                              child: Icon(
                                Icons.notifications_active_outlined,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                           Padding(
                             padding: EdgeInsets.fromLTRB(20,0,0,0),
                             child: Text(
                                  'Subscription',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontFamily: 'Montserrat',
                                    fontSize: 23,
                                    letterSpacing: 1,

                                  ),
                                ),
                           ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                              padding: const EdgeInsets.fromLTRB(10,0,0,0),
                              child: Icon(
                                Icons.settings_outlined,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20,0,0,0),
                              child: Text(
                                'Account Setting',
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontFamily: 'Montserrat',
                                  fontSize: 23,
                                  letterSpacing: 1,

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                              padding: const EdgeInsets.fromLTRB(10,0,0,0),
                              child: Icon(
                                Icons.tv_outlined,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20,0,0,0),
                              child: Text(
                                'My Channel',
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontFamily: 'Montserrat',
                                  fontSize: 23,
                                  letterSpacing: 1,

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
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
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              child: Icon(
                                Icons.logout,
                                size: 28,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10,0,0,0),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontFamily: 'Montserrat',
                                  fontSize: 23,
                                  letterSpacing: 1,

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}