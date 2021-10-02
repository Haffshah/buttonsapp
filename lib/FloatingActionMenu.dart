import 'package:flutter/material.dart';

class FloatingMenu extends StatefulWidget {
  const FloatingMenu({Key? key}) : super(key: key);

  @override
  _FloatingMenuState createState() => _FloatingMenuState();
}

class _FloatingMenuState extends State<FloatingMenu>
    with SingleTickerProviderStateMixin {
  bool isOpened = true;
  late AnimationController _animationController;
  late Animation<Color> _buttonColor;
  late Animation<double> _translateButton;
  Curve _curve = Curves.decelerate;
  double _fabHeight = 49.0;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    )..addListener(() {
        setState(() {});
      });

    _buttonColor =
        ColorTween(begin: Color(0xffc49b9d), end: Colors.deepOrangeAccent)
            .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 1.0, curve: Curves.linear),
      ),
    ) as Animation<Color>;
    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(0.0, 0.75, curve: _curve)));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget buttonCopy() {
    return Container(
      child: FloatingActionButton.extended(
        onPressed: () {
          print('Copy');
        },
        backgroundColor: Color(0xffc49b9d),
        label: Text('Copy'),
        icon: Icon(Icons.copy),
      ),
    );
  }

  Widget buttonCut() {
    return Container(
      width: 110.0,
      child: FloatingActionButton.extended(
        backgroundColor: Color(0xffc49b9d),
        label: Text('Cut'),
        icon: Icon(Icons.cut),
        onPressed: () {
          print('cut');
        },
      ),
    );
  }

  Widget buttonPaste() {
    return Container(
        child: FloatingActionButton.extended(
      hoverColor: Color(0xffcb8d90),
      backgroundColor: Color(0xFF3d5afe),
      onPressed: () {
        print('Paste');
      },
      label: Text('Paste'),
      icon: Icon(Icons.paste),
    ));
  }

  Widget buttonToggle() {
    return Container(
      width: 110.0,
      height: 50,
      child: FloatingActionButton.extended(
        label: !isOpened ? Text('CLOSE') : Text('OPEN'),
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        icon: !isOpened
            ? Icon(Icons.keyboard_arrow_down)
            : Icon(Icons.keyboard_arrow_up),
      ),
    );
  }

  animate() {
    setState(() {
      isOpened = !isOpened;
      if (!isOpened) {
        print('open');
        _animationController.forward();
      } else {
        print('close');
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D1B1B),
      appBar: AppBar(
        title: Text('FAB Menu Example'),
        backgroundColor: Color(0xffc49b9d),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform(
            transform: Matrix4.translationValues(
                0.0, _translateButton.value * 3.0, 0.0),
            child: buttonCopy(),
          ),
          Transform(
            transform: Matrix4.translationValues(
                0.0, _translateButton.value * 2.0, 0.0),
            child: buttonCut(),
          ),
          Transform(
            transform:
                Matrix4.translationValues(0.0, _translateButton.value, 0.0),
            child: buttonPaste(),
          ),
          buttonToggle()
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            'FAB Menu Speed Dial',
            style: TextStyle(color: Color(0xffc49b9d)),
          ),
        ),
      ),
    );
  }
}
