// import 'package:business_2_all/Screens/Category/categorymain.dart';
// import 'package:business_2_all/Screens/Explore/explore.dart';
// import 'package:business_2_all/Screens/favourite.dart';
// import 'package:business_2_all/Screens/home2.dart';
// import 'package:business_2_all/Screens/notification.dart';
// import 'package:business_2_all/Screens/search.dart';
// import 'package:business_2_all/Screens/userprofile.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import 'package:flutter/cupertino.dart';
//
//
// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//     theme: ThemeData(
//       primarySwatch: Colors.cyan,
//     ),
//   ));
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;
//
//   final tabs = [
//     Center(
//       child: Home2(),
//     ),
//     Center(
//       child: Favorite(),
//     ),
//     Center(
//       child: NetflixApp(),
//     ),
//     Center(
//       child: Landing(),
//     ),
//     GestureDetector(
//       onTap: () {
//
//       },
//     )
//
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       // appBar: AppBar(
//       //   elevation: 0,
//       //   backgroundColor: Colors.black,
//       //   leading: GestureDetector(
//       //     onTap: () {
//       //       Navigator.pushNamed(context, '/***********SearchBar');
//       //     },
//       //     child: Icon(
//       //       FontAwesomeIcons.bell,
//       //       size: 30,
//       //       color: Colors.grey[700],
//       //       // add custom icons also
//       //     ),
//       //   ),
//       //   title: Center(
//       //     child: Image.asset(
//       //       'assets/logob.png',
//       //       fit: BoxFit.contain,
//       //       height: 50,
//       //     ),
//       //   ),
//       //   actions: <Widget>[
//       //     IconButton(
//       //       icon: Icon(
//       //         FontAwesomeIcons.list,
//       //         color: Colors.grey[700],
//       //         size: 30,
//       //       ),
//       //       onPressed: () {
//       //         _settingModalBottomSheet(context);
//       //       },
//       //     )
//       //   ],
//       // ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('demo_app'),
//               accountEmail: Text('demo_app@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 child: Text('F'),
//                 backgroundColor: Colors.white,
//                 foregroundColor: Colors.red,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.grey[900],
//               ),
//             ),
//             ListTile(
//               leading: CircleAvatar(
//                 child: Icon(FontAwesomeIcons.home),
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.grey[900],
//               ),
//               title: Text('Home'),
//             ),
//             ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.account_box),
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.grey[900],
//               ),
//               title: Text('Account'),
//             ),
//             ListTile(
//               leading: CircleAvatar(
//                 child: Icon(Icons.close),
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.grey[900],
//               ),
//               title: Text('Close'),
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         ),
//       ),
//       body: tabs[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: new Icon(
//               SimpleLineIcons.home,
//               color: Colors.grey[700],
//               size: 32,
//             ),
//             activeIcon: Icon(
//               SimpleLineIcons.home,
//               size: 32,
//               color: Colors.grey[300],
//             ),
//             label: 'Home',
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Feather.star,
//               size: 32,
//               color: Colors.grey[700],
//             ),
//             activeIcon: Icon(
//               Feather.star,
//               size: 32,
//               color: Colors.grey[300],
//             ),
//             label: 'Favorite',
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Feather.tv,
//               color: Colors.grey[700],
//               size: 32,
//             ),
//             activeIcon: new Icon(
//               Feather.tv,
//               size: 32,
//               color: Colors.grey[300],
//             ),
//             label: 'Explore',
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Feather.copy,
//               color: Colors.grey[700],
//               size: 32,
//             ),
//             activeIcon: Icon(
//               Feather.copy,
//               color: Colors.grey[300],
//               size: 32,
//             ),
//             label: 'Category',
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Feather.user,
//               color: Colors.grey[700],
//               size: 32,
//             ),
//             activeIcon: new Icon(
//               Feather.user,
//               size: 32,
//               color: Colors.grey[300],
//             ),
//             label: 'Profile',
//             backgroundColor: Colors.black,
//           ),
//
//           BottomNavigationBarItem(
//             icon: Icon(
//               Feather.menu,
//               color: Colors.grey[700],
//               size: 32,
//             ),
//             activeIcon: new Icon(
//               Feather.menu,
//               size: 32,
//               color: Colors.grey[300],
//             ),
//             label: 'Menu',
//             backgroundColor: Colors.black,
//
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         //selectedItemColor: Colors.grey[700],
//         unselectedItemColor: Colors.grey[700],
//         selectedLabelStyle: TextStyle(color: Colors.grey[300]),
//       ),
//     );
//   }
// }
//
// void _settingModalBottomSheet(context) {
//   showModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (BuildContext bc) {
//         return Scaffold(
//           backgroundColor: Colors.transparent,
//           body: Stack(
//             children: [
//
//               Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[900],
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//
//
//                       new Wrap(
//                         children: <Widget>[
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 210, right: 210, top: 6),
//                             child: new Divider(
//                               thickness: 5,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                           SizedBox(height: 50,),
//                           new ListTile(
//                               leading: new Icon(
//                                 Icons.settings_outlined,
//                                 size: 30,
//                                 color: Colors.grey[300],
//                               ),
//                               title: new Text(
//                                 'Settings',
//                                 style: TextStyle(
//                                   fontSize: 23,
//                                   color: Colors.grey[300],
//                                   letterSpacing: 0.1,
//                                   fontFamily: 'RoobertTRIAL-Regular',
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               onTap: () => {}),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 70),
//                             child: Divider(
//                               height: 10,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                           new ListTile(
//                               leading: new Icon(
//                                 Icons.notifications_active_outlined,
//                                 size: 30,
//                                 color: Colors.grey[300],
//                               ),
//                               title: new Text(
//                                 'Notifications',
//                                 style: TextStyle(
//                                   fontSize: 23,
//                                   color: Colors.grey[300],
//                                   letterSpacing: 0.1,
//                                   fontFamily: 'RoobertTRIAL-Regular',
//                                 ),
//                               ),
//                               onTap: () => {}),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 70),
//                             child: Divider(
//                               height: 10,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                           new ListTile(
//                               leading: new Icon(
//                                 Icons.local_activity_outlined,
//                                 size: 30,
//                                 color: Colors.grey[300],
//                               ),
//                               title: new Text(
//                                 'Your Activity',
//                                 style: TextStyle(
//                                   fontSize: 23,
//                                   color: Colors.grey[300],
//                                   letterSpacing: 0.1,
//                                   fontFamily: 'RoobertTRIAL-Regular',
//                                 ),
//                               ),
//                               onTap: () => {}),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 70),
//                             child: Divider(
//                               height: 10,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                           new ListTile(
//                               leading: new Icon(
//                                 Icons.card_membership_outlined,
//                                 size: 30,
//                                 color: Colors.grey[300],
//                               ),
//                               title: new Text(
//                                 'Memberships',
//                                 style: TextStyle(
//                                   fontSize: 23,
//                                   color: Colors.grey[300],
//                                   letterSpacing: 0.1,
//                                   fontFamily: 'RoobertTRIAL-Regular',
//                                 ),
//                               ),
//                               onTap: () => {}),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 70),
//                             child: Divider(
//                               height: 10,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                           new ListTile(
//                               leading: new Icon(
//                                 FontAwesomeIcons.userEdit,
//                                 size: 30,
//                                 color: Colors.grey[300],
//                               ),
//                               title: new Text(
//                                 'Discover Streamers',
//                                 style: TextStyle(
//                                   fontSize: 23,
//                                   color: Colors.grey[300],
//                                   letterSpacing: 0.1,
//                                   fontFamily: 'RoobertTRIAL-Regular',
//                                 ),
//                               ),
//                               onTap: () => {}),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 70),
//                             child: Divider(
//                               height: 10,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   )),
//             ],
//           ),
//         );
//       });
// }
