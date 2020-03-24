import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/home_page/home_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: "GoogleSans",
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
