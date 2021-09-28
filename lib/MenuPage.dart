import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  _DropMenuState createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  bool isStrechedDropDown = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Custom Dropdown Menu',
            style: TextStyle(color: Color(0xff171616)),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        // height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.brown, width: 2),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              constraints: BoxConstraints(
                                minHeight: 45.0,
                                minWidth: double.infinity
                              ),
                              child:  Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Text(
                                        "Title",
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown =
                                            !isStrechedDropDown;
                                          });
                                        },
                                        child: Icon(isStrechedDropDown
                                            ? Icons.arrow_drop_up_rounded
                                            : Icons.arrow_drop_down_rounded)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
