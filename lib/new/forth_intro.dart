import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webpage_testing/Widgets/Form.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:webpage_testing/extentions/hoven_extention.dart';
import 'dart:html' as html;

import 'package:webpage_testing/Widgets/Googlemaps.dart';

class ForthIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.0,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 75.0, right: 75.0, top: 75.0, bottom: 100.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Color(0xff191919),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25.0, left: 25.0, right: 25.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Padding(
                              padding: const EdgeInsets.all(75.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'GET IN TOUCH',
                                    style: GoogleFonts.raleway(
                                      color: Color(0xffE1EFF2),
                                      fontSize: 40.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      'SRM-AP University Mangalagiri, Andhra Pradesh 522502',
                                      style: GoogleFonts.raleway(
                                        color: Color(0xffE1EFF2),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Text(
                                      'mssrk2001@gmail.com',
                                      style: GoogleFonts.raleway(
                                        color: Color(0xffE1EFF2),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Text(
                                      '+91 7337247069',
                                      style: GoogleFonts.raleway(
                                        color: Color(0xffE1EFF2),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RaisedButton.icon(
                                      onPressed: () {
                                        html.window.open(
                                            '''https://www.google.com/maps/place/16%C2%B027'48.7%22N+80%C2%B030'28.5%22E''',
                                            'Google Maps');
                                      },
                                      icon: Icon(MdiIcons.googleMaps),
                                      label: Text('Google Maps'),
                                    ).showCursorOnHover.moveUpOnHover,
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: ContactForm(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
