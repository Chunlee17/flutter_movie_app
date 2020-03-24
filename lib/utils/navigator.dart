import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigator {
  static Future push(BuildContext context, Widget page) async {
    return await Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  static Future pushReplacement(BuildContext context, Widget page) async {
    return await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  static Future pushAndRemove(BuildContext context, Widget page) async {
    return await Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (dynamic) => false,
    );
  }
}
