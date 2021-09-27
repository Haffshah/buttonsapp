import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1= false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;


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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed ? Colors.cyan : Colors.redAccent,
                ),
                onPressed: () => {
                  setState(() {
                    _hasBeenPressed = !_hasBeenPressed;
                  })
                },
                child: Row(
                  children: [
                    Icon(Icons.directions_car),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Car'),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed2 ? Colors.cyan : Colors.redAccent,
                ),
                onPressed: () {setState(() {
                  _hasBeenPressed2 = !_hasBeenPressed2;
                },);},
                child: Row(
                  children: [
                    Icon(Icons.directions_car_outlined),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Taxi'),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed3 ? Colors.cyan : Colors.redAccent,
                ),
                onPressed: () {
                  setState(() {
                    _hasBeenPressed3 = !_hasBeenPressed3;
                  },);
                },
                child: Row(
                  children: [
                    Icon(Icons.agriculture),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Tractor'),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed4 ? Colors.cyan : Colors.redAccent,
                ),
                onPressed: () {setState(() {
                  _hasBeenPressed4 = !_hasBeenPressed4;
                },);},
                child: Row(
                  children: [
                    Icon(Icons.directions_bus_sharp),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Bus'),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed1 ? Colors.cyan : Colors.redAccent,
                ),
                onPressed: () {setState(() {
                  _hasBeenPressed1= !_hasBeenPressed1;
                },);},
                child: Row(
                  children: [
                    Icon(Icons.motorcycle),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Bike'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
