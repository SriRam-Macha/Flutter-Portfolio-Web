import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webpage_testing/extentions/hoven_extention.dart';
import 'dart:html' as html;

class Seconrip extends StatefulWidget {
  final List repos;
  Seconrip({this.repos});
  @override
  _SeconripState createState() => _SeconripState();
}

class _SeconripState extends State<Seconrip> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 75.0),
                    child: Text(
                      '<-- Swipe left or Swipe right -->',
                      style: GoogleFonts.raleway(
                          color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Check out the projects I worked on ...',
                      style: GoogleFonts.raleway(
                          color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
                Swiper(
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height / 2.05,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: InkWell(
                              onTap: () {
                                html.window.open(
                                    'https://github.com/ASSASSIN-363/${widget.repos[index]}',
                                    'GitHub');
                              },
                              child: Image.asset(
                                'images/${widget.repos[index]}.jpg',
                                fit: BoxFit.contain,
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '${widget.repos[index]}',
                                style: GoogleFonts.raleway(
                                  fontSize: 22.0,
                                  color: Color(0xffE1EFF2),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: widget.repos.length,
                  viewportFraction: 0.4,
                  scale: 0.3,
                ),
              ],
            ),
          );
  }
}