import 'package:flutter/material.dart';
// import 'package:myapp/touchpad_screen.dart';
import 'welcome_screen.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? ipAddress;

  void setIPAddress(String ip) {
    setState(() {
      ipAddress = ip;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (ipAddress == null) {
      screen = WelcomeScreen(onIPSubmit: setIPAddress);
    } else {
      screen = MyHomePage(ipAddress: ipAddress!);
    }

    return MaterialApp(
      title: 'SaveGuart IOT',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: screen,
      // debugShowCheckedModeBanner: false,
    );
  }
}
