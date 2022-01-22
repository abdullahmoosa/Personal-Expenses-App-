import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// import '../widgets/new_transaction.dart';

class AdabtiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdabtiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          );
    ;
  }
}
