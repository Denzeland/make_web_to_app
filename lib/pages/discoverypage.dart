import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage>
    with TickerProviderStateMixin {
  TabController _controller;

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  void getMessage() {
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
      print('on message $message');
    }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: ToolsUtilities.whiteColor,
          height: MediaQuery.of(context).size.height,
          child: Container(
            // height: 100,
            child: WebView(
              initialUrl: ToolsUtilities.homePageUrl,
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ),
    );
  }
}
