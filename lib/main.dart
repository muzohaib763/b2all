import 'package:business_2_all/Screens/Category/LiveComCat/livcomsub.dart';
import 'package:business_2_all/Screens/Category/LiveHallCat/livehallsub.dart';
import 'package:business_2_all/Screens/Category/LiveSerCat/livsercat.dart';
import 'package:business_2_all/Screens/ChangePassword/changepassword.dart';
import 'package:business_2_all/Screens/Explore/explore.dart';
import 'package:business_2_all/Screens/Introduction/Introductionmain.dart';
import 'package:business_2_all/Screens/PhoneVerification/continue_with_Phone.dart';
import 'package:business_2_all/Screens/accountsetting.dart';
import 'package:business_2_all/Screens/editprofile.dart';
import 'package:business_2_all/Screens/favourite.dart';
import 'package:business_2_all/Screens/forgetpasswordpage.dart';
import 'package:business_2_all/Screens/golive.dart';
import 'package:business_2_all/Screens/home.dart';
import 'package:business_2_all/Screens/home2.dart';
import 'package:business_2_all/Screens/loginpage.dart';
import 'package:business_2_all/Screens/menu.dart';
import 'package:business_2_all/Screens/notification.dart';
import 'package:business_2_all/Screens/searchbar.dart';
import 'package:business_2_all/Screens/searchscreen.dart';
import 'package:business_2_all/Screens/selectionloginsignup.dart';
import 'package:business_2_all/Screens/signuppage.dart';
import 'package:business_2_all/Screens/splashscreen.dart';
import 'package:business_2_all/Screens/streaming.dart';
import 'package:business_2_all/Screens/subsubcategory.dart';
import 'package:business_2_all/Screens/userextendprofile.dart';
import 'package:business_2_all/Screens/userprofile.dart';
import 'package:business_2_all/Settings/accounts.dart';
import 'package:business_2_all/Settings/menusettings.dart';
import 'package:business_2_all/Settings/security.dart';
import 'package:business_2_all/livestreamer.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:business_2_all/Screens/notification.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
         background: Container(color: Colors.black),

        // color: Colors.grey[300],
        // letterSpacing: 0.1,
        // fontFamily: 'RoobertTRIAL-Regular',
        // fontSize: 17,
      ),
      initialRoute: '/****Home',
      routes: {
        '/*****LiveStreamerNow': (context) => LiveStremerNow(),
        '/*****UserExtendPro': (context) => UserExtendProfile(),
        '/*****SearchScr': (context) => SearchScreen(),
        '/*****ChangePass': (context) => ChangePassword(),
        '/*****Security': (context) => SecurityExtend(),
        '/*****Accounts': (context) => Account(),
        '/*****SetExtend': (context) => SetExtend(),
        '/*****Menu': (context) => Menu(),
        '/*home2': (context) => Home2(),
        //'/Noti': (context) => NotificationSearch(),
        '/Landing': (context) => Landing(),
        '/splash': (context) => WelcomeScreen(),
        '/*Selection': (context) => SelectionLogSign(),
        '/**SignUp': (context) => SignUp(),
        '/***Login': (context) => LoginPage(),
        '/****Home': (context) => HomePage(),
        '/*****AccountSetting': (context) => AccountSetting(),
        '/******GoLive': (context) => GoLive(),
        '/*******StreamingAfterButtonClick': (context) => Streaming(),
        '/********UserProfile': (context) => UserProfile(),
        '/*********ChangePassword': (context) => ChangePassword(),
        '/**********EditProfile': (context) => EditProfile(),
        '/***********SearchBar': (context) => SearchBar(),
        '/************Favorite': (context) => Favorite(),
        '/*************SubSubCategory': (context) => SubSubCategory(),
        '/**************LivCommerceSub': (context) => LiveCommerceSub(),
        '/***************LivHallSub': (context) => LiveHallSub(),
        '/****************LivServicesSub': (context) => LiveServicesSub(),
        '/*****************Explore': (context) => NetflixApp(),
        '/**Continuewithphone': (context) => ContinueWithPhone(), //new
        '/*****': (context) => PasswordPage(),
      },
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/*******StreamingAfterButtonClick',
//     routes:{
//       '/Landing': (context) => Landing(),
//       '/splash': (context) => WelcomeScreen(),
//       '/*Selection' : (context) => SelectionLogSign(),
//       '/**SignUp' : (context) => SignUp(),
//       '/***Login' : (context) => LoginPage(),
//       '/****Home' : (context) => HomePage(),
//       '/*****AccountSetting' : (context) => AccountSetting(),
//       '/******GoLive': (context) => GoLive(),
//       '/*******StreamingAfterButtonClick': (context) => Streaming(),
//       '/********UserProfile': (context) => UserProfile(),
//       '/*********ChangePassword': (context) => ChangePassword(),
//       '/**********EditProfile': (context) => EditProfile(),
//       '/***********SearchBar': (context) => SearchBar(),
//       '/************Favorite': (context) => Favorite(),
//       '/*************SubSubCategory': (context) => SubSubCategory(),
//       '/**************LivCommerceSub': (context) => LiveCommerceSub(),
//       '/***************LivHallSub': (context) => LiveHallSub(),
//       '/****************LivServicesSub': (context) => LiveServicesSub(),//new
//       '/*****': (context) => PasswordPage(),
//     },
//   ));
// }
