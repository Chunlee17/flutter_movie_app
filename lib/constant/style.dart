import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const TextStyle headerStyle = TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold);
const TextStyle titleStyle = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);
const TextStyle subtitleStyle = TextStyle(fontSize: 14, color: Colors.black);
const TextStyle subtitleStyleBold = TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold);
const TextStyle infoStyle = TextStyle(fontSize: 12, color: Colors.grey);

RoundedRectangleBorder roundRect([double radius = 8]) {
  return RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));
}
