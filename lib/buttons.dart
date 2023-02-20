import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BUTTON extends StatelessWidget {
  final Function selectHandler;
  BUTTON(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text('Button'),
          onPressed: selectHandler,
          color: Color.fromARGB(215, 91, 237, 222)),
    );
  }
}
