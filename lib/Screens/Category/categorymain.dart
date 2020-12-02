import 'package:business_2_all/Screens/Category/categoryslider.dart';
import 'package:business_2_all/Screens/loginpage.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landing(),
    );
  }
}

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
   SliderPage(
          title: "Live Commerce",
          description:
          "Accept cryptocurrencies and digital assets, keep thern here, or send to orthers",
          image: "assets/highlightedcategoryone.png",
          action: '/**************LivCommerceSub',


   ),

    SliderPage(
        title: "Live Services",
        description:
        "Buy Bitcoin and cryptocurrencies with VISA and MasterVard right in the App",
        image: "assets/highlightedcategorytwo.png",
        action: '/****************LivServicesSub',

    ),
    SliderPage(
        title: "Live Hall",
        description:
        "Sell your Bitcoin cryptocurrencies or Change with orthres digital assets or flat money",
        image: "assets/highlightedcategorythree.png",
    action: '/***************LivHallSub',),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: Text(
            'Categories',
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
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: <Widget>[
          //     Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: List<Widget>.generate(_pages.length, (int index) {
          //           return AnimatedContainer(
          //               duration: Duration(milliseconds: 300),
          //               height: 10,
          //               width: (index == _currentPage) ? 30 : 10,
          //               margin:
          //               EdgeInsets.symmetric(horizontal: 5, vertical: 30),
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(5),
          //                   color: (index == _currentPage)
          //                       ? Colors.blue
          //                       : Colors.blue.withOpacity(0.5)));
          //         })),
          //     InkWell(
          //       onTap: () {
          //         _controller.nextPage(
          //             duration: Duration(milliseconds: 800),
          //             curve: Curves.easeInOutQuint);
          //       },
          //       child: AnimatedContainer(
          //         alignment: Alignment.center,
          //         duration: Duration(milliseconds: 300),
          //         height: 70,
          //         width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
          //         decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(35)),
          //         child: (_currentPage == (_pages.length - 1))
          //             ? Text(
          //           "Get Started",
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20,
          //           ),
          //         )
          //             : Icon(
          //           Icons.navigate_next,
          //           size: 50,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 50,
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}