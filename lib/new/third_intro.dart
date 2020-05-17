import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 2 / 3,
        color: Color(0xffE1EFF2),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text:
                            '''"I haven't failed. I've just found 10,000\nways that won't work"''',
                        style: GoogleFonts.raleway(
                            fontSize: 25.0, color: Colors.black),
                        children: [
                          TextSpan(
                              text: '\n\n- Thomas Edison',
                              style: GoogleFonts.raleway(
                                  fontSize: 18.0, color: Colors.black))
                        ]),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/QuietDesk.webp',
                    fit: BoxFit.contain,
                    height: 340,
                    width: 460,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
