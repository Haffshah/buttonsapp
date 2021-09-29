/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  int selected = 0;
  Widget customRadioButtons(int index, String text, IconData icon) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: (selected == index) ? Colors.cyan : Colors.redAccent,
      ),
      onPressed: () => {
        setState(() {
          selected = index;
        })
      },
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10.0,
          ),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D1B1B),
      appBar: AppBar(
        backgroundColor: Color(0xffAA96DA),
        title: Text('Button Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              customRadioButtons(1, 'car', Icons.directions_car),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(2, 'Taxi', Icons.directions_car_outlined),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(3, 'Tractor', Icons.agriculture),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(4, 'Bus', Icons.directions_bus_sharp),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(5, 'Cycle', Icons.motorcycle_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({Key? key}) : super(key: key);

  @override
  _MyTabbarState createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  int selected = 0;
  Container tabBarContainer(String text, IconData icon, int index) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff292826),
      ),
      child: Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
            ),
            SizedBox(
              width: 2.0,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xffFCE77D),
        appBar: AppBar(
          title: Text('Custom TabBar Example'
              ''),
          backgroundColor: Color(0xffF96167,),
          elevation: 10.0,
          toolbarHeight: 120,
          bottom: TabBar(
            unselectedLabelColor: Colors.white30,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            indicatorColor: Colors.pink,
            tabs: [
              tabBarContainer('Car', Icons.directions_car, 1),
              tabBarContainer('Bus', Icons.directions_bus, 2),
              tabBarContainer('Cycle', Icons.motorcycle, 3),
              tabBarContainer('Taxi', Icons.directions_car_outlined, 4),
              tabBarContainer('Aeroplane', Icons.airplanemode_on_sharp, 5),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabBody(Icons.directions_car),
            tabBody(Icons.directions_bus),
            tabBody(Icons.motorcycle_outlined),
            tabBody(Icons.directions_car_outlined),
            tabBody(Icons.airplanemode_on_rounded)
          ],
        ),
      ),
    );
  }

  Icon tabBody(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: 100,
    );
  }
}
