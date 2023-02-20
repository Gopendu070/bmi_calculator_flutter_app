// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './MainContent.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // returns a StatefulWidget class obj
  }
}

class _MyAppState extends State<MyApp> {
  final _text = [
    'Buttons listed bellow=>',
    'Here are some Buttons ',
    'Press the Button '
  ];
  var _textIndex = 0;
  void Func() {
    print("Hey bro :)");

    //Through setState()  flutter calls the build() again
    setState(() {
      //setState always "ReBUILD" the "Widget_Tree"
      //setState holds an Anonymous Fn that can change our prperty
      _textIndex = _textIndex + 1;
    });
    print(_textIndex);
  }

  void resetFunc() {
    setState(() {
      //setState always "ReBUILD" the "Widget_Tree"
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //MaterialApp is a widget which is being returned by the build() method
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first App :)'),
      ),
      body: (_textIndex < _text.length)
          ? Content(_text, _textIndex, Func)
          : Center(
              child: Container(
                height: double.infinity,
                margin: EdgeInsets.all(100),
                child: Column(
                  children: [
                    Text('It\'s over'),
                    FlatButton(
                        onPressed: resetFunc,
                        child: Text(
                          'Reset All !',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black54),
                  ],
                ),
              ),

              //body only takes single widget, so wrap it all in Column
            ),
    ));
  }
}
