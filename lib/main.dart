import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webpage_testing/new/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage()
    );
  }
}

