import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  _DropMenuState createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  var _itemList = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  var currentSelected = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Custom Dropdown Menu', style: TextStyle(color: Color(
            0xff171616)),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Normal Use of Menu Button'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DropdownButton<String>(
              isExpanded: true,

              items: _itemList.map(
                (String dropDownStingItem) {
                  return DropdownMenuItem(
                    child: Text(dropDownStingItem),
                    value: dropDownStingItem,
                  );
                },
              ).toList(),
              onChanged: (newValueSelected) {

                dropDownItemSelected(newValueSelected!);

              },
              value: currentSelected,
            ),
          ),
        ],
      ),
    );
  }

  void dropDownItemSelected( newValueSelected){
    setState(() {
      this.currentSelected = newValueSelected!;
    });
  }
}
