import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlTest extends StatefulWidget {
  @override
  _ControlTestState createState() => _ControlTestState();
}

class _ControlTestState extends State<ControlTest> {
  int _radioVal = 1;
  @override
  Widget build(BuildContext context) {
    double mediaPaddingTop = MediaQuery.of(context).padding.top;
    return Padding(
      padding: EdgeInsets.only(top: mediaPaddingTop),
      child: Column(
        children: [
          RadioListTile(
            value: 0,
            title: Text('语文'),
            groupValue: _radioVal,
            onChanged: (val) {
              setState(() {
                _radioVal = val;
              });
            }
          ),
          RadioListTile(
              value: 1,
              title: Text('数学'),
              groupValue: _radioVal,
              onChanged: (val) {
                setState(() {
                  _radioVal = val;
                });
              }
          ),
          DropdownButton(
            value: _radioVal,
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text("测试1"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("测试2"),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text("测试3"),
              ),
            ],
            onChanged: (val) {
              setState(() {
                _radioVal = val;
              });
            }
          )
        ],
      )
    );
  }
}
