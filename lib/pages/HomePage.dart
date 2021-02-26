import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drag/drag.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int actIndex = 0;
  PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    _statusBar();
  }

  @override
  Widget build(BuildContext context) {
    double mediaTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: actIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "1111"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.donut_small),
              label: "2222"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "3333"
          ),
        ],
        onTap: (val) {
          setState(() {
            actIndex = val;
            _pageController.jumpToPage(val);
          });
        },
      ),
      body: Container(
        child: PageView(
          controller: _pageController,
          children: [
            Container(
              color: Colors.orange,
              child: Center(child: Text('1111')),
            ),
            DragTest(),
            Container(
              color: Colors.blue,
              child: Center(child: Text('2222')),
            ),
          ],
          onPageChanged: (val) {
            setState(() {
              actIndex = val;
            });
          },
        ),
      ),
    );
  }

  void _statusBar() {
    SystemUiOverlayStyle uiOverlay = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlay);
  }
}
