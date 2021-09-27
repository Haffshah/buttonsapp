import 'package:flutter/material.dart';
import 'package:flutter_fab_dialer/flutter_fab_dialer.dart' show FabDialer, FabMiniMenuItem;

class FloatingMenu extends StatefulWidget {
  const FloatingMenu({Key? key}) : super(key: key);

  @override
  _FloatingMenuState createState() => _FloatingMenuState();
}

class _FloatingMenuState extends State<FloatingMenu> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _fabMiniMenuItemList = [
      FabMiniMenuItem.withText(
          new Icon(Icons.copy), //icon
          Color(0xffc49b9d), //color
          10.0, // elevation
          "Copy Button", // tooltip
          _incrementCounter, // on press function
          "Copy", // text
          Color(0xffc49b9d), // color of chip
          Colors.white, // color of text
          true),
      FabMiniMenuItem.withText(
          new Icon(Icons.paste),
          Color(0xffc49b9d),
          10.0,
          "Paste Button",
          _incrementCounter,
          "Paste",
          Color(0xffc49b9d),
          Colors.white,
          true),
      FabMiniMenuItem.withText(
          new Icon(Icons.cut),
          Color(0xffc49b9d),
          10.0,
          "Cut Button",
          _incrementCounter,
          "Cut",
          Color(0xffc49b9d),
          Colors.white,
          true)
    ];

    return Scaffold(
      backgroundColor: Color(0xff1D1B1B),
      appBar: AppBar(
        title: Text('FAB Menu Example'),
        backgroundColor: Color(0xffc49b9d),
      ),
      //Using a Stack will assure that the Dialer will appear at the end of your layout
      body: Stack(
        children: <Widget>[
          Center(
            child: Center(
              child: Text(
                'Test Speed Dial FAB Menu Example',
                style: TextStyle(
                  color: Color(0xffc49b9d),
                ),
              ),
            ),
          ),
          FabDialer(_fabMiniMenuItemList, Color(0xffc49b9d),
              Icon(Icons.keyboard_arrow_down)),
        ],
      ),
    );
  }
}
