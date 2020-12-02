import 'package:business_2_all/Screens/Introduction/introslider.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  final String action;

  Landing({this.action});

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    IntroductionSlider(
        title: "B in B-live",
        description: "Live Commerce is here..Are you Ready to B-Live?",
        image: "assets/greyfirst.png"),
    IntroductionSlider(
        title: "Byourself Belive Blive",
        description: "Live Stream Your Business from Local to Global",
        image: "assets/greysecond.PNG"),
    IntroductionSlider(
        title: "Find Streamer for Business",
        description: "Enroll as Talented Streamer and start earning \$\$\$",
        image: "assets/greythird.png"),
    IntroductionSlider(
        title: "Sell Fast & Internationally",
        description: "And manage your client`s payments and shipping details",
        image: "assets/forth.png"),
    IntroductionSlider(
      title: "Launch Your Product",
      description:
          "Organize your Virtual Auctions and Virtual Events or book your virtual seat to attend exclusive events ",
      image: "assets/last.PNG",
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.grey[300]
                                : Colors.grey[300].withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 50,
                  width: (_currentPage == (_pages.length - 1)) ? 130 : 75,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: (_currentPage == (_pages.length - 1))
                      ? InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/*Selection');
                          },
                          child: Text(
                            "Go Live",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RoobertTRIAL-Regular',
                              fontSize: 21,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.black,
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
