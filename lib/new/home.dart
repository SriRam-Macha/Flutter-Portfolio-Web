import 'package:flutter/gestures.dart';
import 'package:github/github.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:webpage_testing/Widgets/Form.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:webpage_testing/new/second_2_intro.dart';
import 'package:webpage_testing/new/top_intro.dart';
import 'package:flutter_parallax/flutter_parallax.dart';
import 'package:webpage_testing/services/github.dart';

import 'first_Intro.dart';
import 'forth_intro.dart';
import 'second_intro.dart';
import 'third_intro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  double up = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimateIfVisibleWrapper(
        showItemInterval: Duration(milliseconds: 150),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: <Widget>[
              Topheader(),
              Topheadertwo(),
              FirstIntro(),
              SecondIntro(),
              ThirdIntro(),
              ForthIntro(),
            ],
          ),
        ),
      ),
    );
  }
}
