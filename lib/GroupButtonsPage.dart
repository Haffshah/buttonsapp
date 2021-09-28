import 'package:flutter/material.dart';

class GroupButtons extends StatefulWidget {
  const GroupButtons({Key? key}) : super(key: key);

  @override
  _GroupButtonsState createState() => _GroupButtonsState();
}

class _GroupButtonsState extends State<GroupButtons> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;
  bool _hasBeenPressed8 = false;
  bool _hasBeenPressed9 = false;
  bool _hasBeenPressed10 = false;
  bool _hasBeenPressed11 = false;
  bool _hasBeenPressed12 = false;
  bool _hasBeenPressed13 = false;
  bool _hasBeenPressed14 = false;
  bool _hasBeenPressed15 = false;
  bool _hasBeenPressed16 = false;
  bool _hasBeenPressed17 = false;
  bool _hasBeenPressed18 = false;
  bool _hasBeenPressed19 = false;
  bool _hasBeenPressed20 = false;
  bool _hasBeenPressed21 = false;

  bool selected = false;

  Widget customCheckbutton(String text, dynamic value){
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor:
          (value) ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(200.0, 40.0)),
      onPressed: () {
        setState(
              () {
                value = !value;
          },
        );
      },
      child: Text(
        text,
        style: TextStyle(
          color:
          value ? Colors.white : Colors.black,
        ),
      ),
    );
  }
  Widget customRadio(int index) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: selected ? Color(0xff3c299a) : Color(0xff8AAAE5),

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)),
          fixedSize: Size(150.0, 50.0)),
      onPressed: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Row(
        children: [
          Icon(Icons.radio_button_checked, color: Colors.white,),
          SizedBox(width: 10.0,),
          Text(
            'Radio Button',
            style: TextStyle(
              color: selected ? Colors.white : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8AAAE5),
        title: Text('Grouped Button Example '),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Horizontal',
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Text(
                      'Shape Disabled',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: customCheckbutton('Monday', _hasBeenPressed)
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                _hasBeenPressed1 ? Colors.red : Colors.white,
                            side: BorderSide(color: Colors.red, width: 1.0),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed1 = !_hasBeenPressed1;
                            },
                          );
                        },
                        child: Text(
                          'Tuesday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed1 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                _hasBeenPressed2 ? Colors.red : Colors.white,
                            side: BorderSide(color: Colors.red, width: 1.0),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed2 = !_hasBeenPressed2;
                            },
                          );
                        },
                        child: Text(
                          'Wednesday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed2 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                _hasBeenPressed3 ? Colors.red : Colors.white,
                            side: BorderSide(color: Colors.red, width: 1.0),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed3 = !_hasBeenPressed3;
                            },
                          );
                        },
                        child: Text(
                          'Thursday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed3 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Text(
                      'Shape Enabled',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                _hasBeenPressed4 ? Colors.red : Colors.white,
                            side: BorderSide(
                              color: Colors.red,
                              width: 1.0,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed4 = !_hasBeenPressed4;
                            },
                          );
                        },
                        child: Text(
                          'Monday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed4 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor:
                                _hasBeenPressed5 ? Colors.red : Colors.white,
                            side: BorderSide(color: Colors.red, width: 1.0),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed5 = !_hasBeenPressed5;
                            },
                          );
                        },
                        child: Text(
                          'Tuesday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed5 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor:
                                _hasBeenPressed6 ? Colors.red : Colors.white,
                            side: BorderSide(color: Colors.red, width: 1.0),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed6 = !_hasBeenPressed6;
                            },
                          );
                        },
                        child: Text(
                          'Wednesday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed6 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor:
                                _hasBeenPressed7 ? Colors.red : Colors.white,
                            side: BorderSide(color: Colors.red, width: 1.0),
                            fixedSize: Size(200.0, 40.0)),
                        onPressed: () {
                          setState(
                            () {
                              _hasBeenPressed7 = !_hasBeenPressed7;
                            },
                          );
                        },
                        child: Text(
                          'Thursday',
                          style: TextStyle(
                            color:
                                _hasBeenPressed7 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Shape Disabled',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed8 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed8 = !_hasBeenPressed8;
                        },
                      );
                    },
                    child: Text(
                      'Monday',
                      style: TextStyle(
                        color: _hasBeenPressed8 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed9 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed9 = !_hasBeenPressed9;
                        },
                      );
                    },
                    child: Text(
                      'Tuesday',
                      style: TextStyle(
                        color: _hasBeenPressed9 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed10 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed10 = !_hasBeenPressed10;
                        },
                      );
                    },
                    child: Text(
                      'Wednesday',
                      style: TextStyle(
                        color: _hasBeenPressed10 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed11 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed11 = !_hasBeenPressed11;
                        },
                      );
                    },
                    child: Text(
                      'Thursday',
                      style: TextStyle(
                        color: _hasBeenPressed11 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed12 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed12 = !_hasBeenPressed12;
                        },
                      );
                    },
                    child: Text(
                      'Friday',
                      style: TextStyle(
                        color: _hasBeenPressed12 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed13 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed13 = !_hasBeenPressed13;
                        },
                      );
                    },
                    child: Text(
                      'Saturday',
                      style: TextStyle(
                        color: _hasBeenPressed13 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed14 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed14 = !_hasBeenPressed14;
                        },
                      );
                    },
                    child: Text(
                      'Sunday',
                      style: TextStyle(
                        color: _hasBeenPressed14 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Shape Enabled',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            _hasBeenPressed15 ? Colors.red : Colors.white,
                        side: BorderSide(
                          color: Colors.red,
                          width: 1.0,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed15 = !_hasBeenPressed15;
                        },
                      );
                    },
                    child: Text(
                      'Monday',
                      style: TextStyle(
                        color: _hasBeenPressed15 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor:
                            _hasBeenPressed16 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed16 = !_hasBeenPressed16;
                        },
                      );
                    },
                    child: Text(
                      'Tuesday',
                      style: TextStyle(
                        color: _hasBeenPressed16 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor:
                            _hasBeenPressed17 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed17 = !_hasBeenPressed17;
                        },
                      );
                    },
                    child: Text(
                      'Wednesday',
                      style: TextStyle(
                        color: _hasBeenPressed17 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor:
                            _hasBeenPressed18 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed18 = !_hasBeenPressed18;
                        },
                      );
                    },
                    child: Text(
                      'Thursday',
                      style: TextStyle(
                        color: _hasBeenPressed18 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor:
                            _hasBeenPressed19 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed19 = !_hasBeenPressed19;
                        },
                      );
                    },
                    child: Text(
                      'Friday',
                      style: TextStyle(
                        color: _hasBeenPressed19 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor:
                            _hasBeenPressed20 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed20 = !_hasBeenPressed20;
                        },
                      );
                    },
                    child: Text(
                      'Saturday',
                      style: TextStyle(
                        color: _hasBeenPressed20 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor:
                            _hasBeenPressed21 ? Colors.red : Colors.white,
                        side: BorderSide(color: Colors.red, width: 1.0),
                        fixedSize: Size(120.0, 40.0)),
                    onPressed: () {
                      setState(
                        () {
                          _hasBeenPressed21 = !_hasBeenPressed21;
                        },
                      );
                    },
                    child: Text(
                      'Sunday',
                      style: TextStyle(
                        color: _hasBeenPressed21 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                customRadio(1),
              ],
            ),
          )
        ],
      ),
    );
  }
}
