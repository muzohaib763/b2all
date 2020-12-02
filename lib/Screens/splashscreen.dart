import 'package:business_2_all/Screens/Introduction/Introductionmain.dart';
import 'package:business_2_all/Screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        routeName: '/splash',
        //number of seconds the splash screen will show
        seconds: 7,
        //Page to show after splash screen
        navigateAfterSeconds: Landing(),
        title: new Text(
          'From Local To Global',
          style: new TextStyle(
               color: Colors.white, fontSize: 23.0),
        ),
        //Our logo that we have imported in step 2
        image: new Image.asset('assets/logob.png',),
        //Splash Screen Background color
        // gradientBackground: LinearGradient(
        //     colors: [Colors.black, Colors.black],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight),
        backgroundColor: Colors.black,

        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.white,
        loadingText: Text('Business 2 ALL',
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
        ),),

    );

  }
}







// import 'package:business_2_all/Screens/loginpage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(
//       Duration(seconds: 3),
//           () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => LoginPage(),
//           ),
//         );
//       },
//     );
//   }
// //
// //
// //
// //
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
// //         // decoration: BoxDecoration(
// //         //   gradient: LinearGradient(
// //         //       begin: Alignment.bottomCenter,
// //         //       colors: [
// //         //         Colors.white,
// //         //         Colors.white10,
// //         //         Colors.white12,
// //         //
// //         //       ]
// //         //   ),
// //         // ),
//         child: Center(
//           child: Image.asset('assets/logob.png',
//             height: 190,
//             width: 190,
//             colorBlendMode: BlendMode.darken,
//             fit: BoxFit.fitWidth,
//           ),
//         ),
//
//
//
//       ),
//
//
//     );
//   }
// }