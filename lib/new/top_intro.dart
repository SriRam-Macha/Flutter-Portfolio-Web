import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:google_fonts/google_fonts.dart';

class Topheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimateIfVisible(
      key: Key('item.1'),
      duration: Duration(milliseconds: 350),
      builder: (
        BuildContext context,
        Animation<double> animation,
      ) =>
          FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: Container(
          child: Center(
            child: Text(
              'SRI RAM',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 22.5,
              ),
            ),
          ),
          height: 95,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Topheadertwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
          height: 40,
          color: Color(0xff191919),
        ),
      ),
    );
  }
}
