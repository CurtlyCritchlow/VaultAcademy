import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/models/persistent-nav-bar-scaffold.widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:vault_academy/screens/course_detail_screen.dart';
import 'package:vault_academy/screens/course_list_screen.dart';
import 'package:vault_academy/screens/home_screen.dart';
import 'contstants.dart';
import 'models/course_data.dart';

void main() {
  runApp(MyApp());
}

PersistentTabController _controller;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CourseData(),
      child: MaterialApp(
        title: 'The Vault Academy',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          fontFamily: kFontRoboto,
          textTheme: TextTheme(
            bodyText2: TextStyle(
              fontSize: 20,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SafeArea(
          child: PersistentTabView(
            controller: _controller,
            items: [
              PersistentBottomNavBarItem(
                icon: Icon(Icons.home),
                title: ("Home"),
                activeColor: kPrimaryColor,
                inactiveColor: kPrimaryColor,
                // inactiveColor: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.search),
                title: ("Search"),
                activeColor: kPrimaryColor,
                inactiveColor: kPrimaryColor,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.play_circle_outline),
                title: ("My Courses"),
                activeColor: kPrimaryColor,
                inactiveColor: kPrimaryColor,
              ),
              PersistentBottomNavBarItem(
                icon: Image.asset(
                  'assets/images/vault_logo.png',
                  scale: 8.0,
                ),
                title: ("Conference"),
                activeColor: kPrimaryColor,
                inactiveColor: kPrimaryColor,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.account_circle),
                title: ("Account"),
                activeColor: kPrimaryColor,
                inactiveColor: kPrimaryColor,
              ),
            ],
            screens: <Widget>[
              HomeScreen(),
              CourseListScreen(),
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
            ],
            navBarStyle: NavBarStyle.style1,
            onItemSelected: (index) {
              print(index);
            },
          ),
        ),
        routes: {
          CourseDetailScreen.routeName: (ctx) => CourseDetailScreen(),
        },
      ),
    );
  }
}
