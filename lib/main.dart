import 'package:buttonsapp/FloatingActionMenu.dart';
import 'package:buttonsapp/GroupButtonsPage.dart';
import 'package:buttonsapp/GroupRadioButtons.dart';
import 'package:buttonsapp/MenuPage.dart';
import 'package:buttonsapp/ReactionPage.dart';
import 'package:flutter/material.dart';
import 'buttonpage_icon.dart';
import 'floating.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      appBar: AppBar(
        backgroundColor: Color(0xffB88746),
        title: Text('All Screen Link'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButtonWidget(
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FloatingMenu(),
                  ),
                );
              },
              text: 'Fab Menu',
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButtonWidget(
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTabbar(),
                  ),
                );
              },
              text: 'Tabbar Button Page',
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButtonWidget(
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupButtons(),
                  ),
                );
              },
              text: 'Group Checked of buttons',
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButtonWidget(
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupRadio(),
                  ),
                );
              },
              text: 'Group of Radio buttons',
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButtonWidget(
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DropMenu(),
                  ),
                );
              },
              text: 'Menu Button Example',
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButtonWidget(
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReactionButtonPage(),
                  ),
                );
              },
              text: 'Reaction Button Example',
            ),
            SizedBox(
              height: 15.0,
            ),
            // ElevatedButtonWidget(
            //   onclick: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => FloatingActionButtonDemo(),
            //       ),
            //     );
            //   },
            //   text: 'Reaction Button',
            // ),
            // SizedBox(
            //   height: 15.0,
            // ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  final Function onclick;
  final String text;
  const ElevatedButtonWidget({
    Key? key,
    required this.onclick,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffB88746),
        fixedSize: Size(280, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {
        onclick();
      },
      child: Text(text),
    );
  }
}
