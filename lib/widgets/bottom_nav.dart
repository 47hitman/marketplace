import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:proto/screens/screen1.dart';

class BottomBar extends StatefulWidget {
  final int initialIndex;

  const BottomBar({Key? key, required this.initialIndex}) : super(key: key);
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Screen1(),
    Screen1(),
    Screen1()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
              child: GNav(
                haptic: true,
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: const [
                  GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                      backgroundColor: Colors
                          .transparent, // Set the background color to transparent
                      textStyle: TextStyle(color: Colors.white),
                      backgroundGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFF15bae8),
                            Color(0xFF1254A0),
                          ])),
                  GButton(
                      icon: LineIcons.history,
                      text: 'History',
                      backgroundColor: Colors
                          .transparent, // Set the background color to transparent
                      textStyle: TextStyle(color: Colors.white),
                      backgroundGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFF15bae8),
                            Color(0xFF1254A0),
                          ])),
                  GButton(
                      icon: LineIcons.laughFaceWithBeamingEyes,
                      text: 'Settings',
                      backgroundColor: Colors
                          .transparent, // Set the background color to transparent
                      textStyle: TextStyle(color: Colors.white),
                      backgroundGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFF15bae8),
                            Color(0xFF1254A0),
                          ])),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          )),
    );
  }
}
