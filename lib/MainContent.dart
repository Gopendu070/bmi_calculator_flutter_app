import 'package:flutter/material.dart';
import './buttons.dart';
import './text.dart';

class Content extends StatelessWidget {
  Function func;
  List<String> text;
  int textIndex;
  Content(this.text, this.textIndex, this.func);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextClass(text[textIndex]), //CONSTRUCTOR
      //The Value of _textIndex is actually changing
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: BUTTON(func),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: BUTTON(func),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: BUTTON(func),
      ),
    ]);
  }
}
