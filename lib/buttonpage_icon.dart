import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
 
  int selected = 0;
  Widget customRadioButtons(int index, String text, IconData icon ) {
    return   ElevatedButton(
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
      backgroundColor:  Color(0xff1D1B1B),
      appBar: AppBar(
        backgroundColor:  Color(0xffAA96DA),
        title: Text('Button Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              customRadioButtons(1,'car', Icons.directions_car),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(2,'Taxi', Icons.directions_car_outlined), SizedBox(
                width: 10.0,
              ),
              customRadioButtons(3,'Tractor', Icons.agriculture),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(4,'Bus', Icons.directions_bus_sharp),
              SizedBox(
                width: 10.0,
              ),
              customRadioButtons(5,'Cycle', Icons.motorcycle_outlined),

            ],
          ),
        ),
      ),
    );
  }
}
