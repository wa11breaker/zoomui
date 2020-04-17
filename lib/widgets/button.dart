import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final dynamic function;

  const Button({Key key, this.text, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.blue,
      onPressed:  function,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
