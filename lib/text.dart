import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  final String text;

  TextClass(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          double.infinity, //by this container can get the full widthe of device
      margin: EdgeInsets.all(19),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      color: Colors.greenAccent,
    );
  }
}
