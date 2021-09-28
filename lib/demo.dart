import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: 20),
              _dropmenu('assets/choc.png', 'Name 1', 1000),
              _dropmenu('assets/choc.png', 'Name 2', 2000),
              _dropmenu('assets/choc.png', 'Name 3', 3000),
              _dropmenu('assets/choc.png', 'Name 4', 4000),
              _dropmenu('assets/choc.png', 'Name 5', 5000),
              _dropmenu('assets/choc.png', 'Name 6', 6000),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropmenu(String imageAsset, String name, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Container(height: 2, color: Colors.redAccent),
          SizedBox(height: 12),
          Row(
            children: <Widget>[

              Text(name),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[900],
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text('$price'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
