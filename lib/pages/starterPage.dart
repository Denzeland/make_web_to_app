import 'package:flutter/material.dart';
import 'package:full_web_converter/pages/aboutUs.dart';
import 'package:full_web_converter/pages/categoriesPage.dart';
import 'package:full_web_converter/pages/discoverypage.dart';
import 'package:full_web_converter/pages/contactUsPage.dart';
import 'package:full_web_converter/pages/allPostsPage.dart';

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    List<Widget> tabs = [
      AboutUs(),
      CategoriesPage(),
      DiscoveryPage(),
      AllPostsPage(),
      ContactUsPage()
    ];

    return Scaffold(
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: tabs[_page],
      // ),
      body: tabs[_page],
    );
  }
}
