import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:webpage_testing/my_flutter_app_icons.dart';
import 'package:webpage_testing/new/home.dart';
import 'package:webpage_testing/extentions/hoven_extention.dart';

class FirstIntro extends StatefulWidget {
  @override
  _FirstIntroState createState() => _FirstIntroState();
}

class _FirstIntroState extends State<FirstIntro> {
  double localX = 0;
  double localY = 0;
  bool defaultPosition = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double percentageX = (localX / (size.width - 40)) * 100;
    double percentageY = (localY / 230) * 100;
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xff191919),
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child: Container(
                    color: Colors.black,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.001)
                                ..rotateX(defaultPosition
                                    ? 0
                                    : (0.3 * (percentageY / 50) + -0.9))
                                ..rotateY(defaultPosition
                                    ? 0
                                    : (-1.8 * (percentageX / 50) + 0.9)),
                              alignment: FractionalOffset.center,
                              child: MouseRegion(
                                onEnter: (_) =>
                                    setState(() => defaultPosition = false),
                                onExit: (_) => setState(() {
                                  localY = (size.height) / 2;
                                  localX = (size.width * 0.45) / 2;
                                  defaultPosition = true;
                                }),
                                onHover: (details) {
                                  if (mounted)
                                    setState(() => defaultPosition = false);
                                  if (details.localPosition.dx > 0 &&
                                      details.localPosition.dy > 0) {
                                    if (details.localPosition.dx <
                                            (size.width * 0.45) * 1.5 &&
                                        details.localPosition.dy > 0) {
                                      localX = details.localPosition.dx;
                                      localY = details.localPosition.dy;
                                    }
                                  }
                                },
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 115,
                                    backgroundImage:
                                        AssetImage('assets/images/SriRam.jpg'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Sai Sri Ram Kumar Macha',
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Cyber Security. Flutter. Web development',
                                      style: GoogleFonts.raleway(
                                        color: Colors.white70,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      'Likes Traveling.',
                                      style: GoogleFonts.raleway(
                                        color: Colors.white70,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        FlatButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            MdiIcons.github,
                                            color: Colors.deepPurpleAccent[200],
                                          ),
                                          label: Text(
                                            'GitHub',
                                            style: GoogleFonts.raleway(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ).showCursorOnHover.moveUpOnHover,
                                        FlatButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            MdiIcons.twitter,
                                            color: Colors.blue,
                                          ),
                                          label: Text(
                                            'Twitter',
                                            style: GoogleFonts.raleway(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ).showCursorOnHover.moveUpOnHover,
                                        FlatButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            MyFlutterApp.codewars,
                                            color: Colors.red,
                                          ),
                                          label: Text(
                                            'Codewars',
                                            style: GoogleFonts.raleway(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ).showCursorOnHover.moveUpOnHover,
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff191919),
                    border: Border.all(
                      width: 0.0,
                      color: Color(0xff191919),
                    )),
                child: Center(
                    child: Container(
                        width: 768.0 / 1.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'SRI RAM WELCOMES YOU',
                              style: GoogleFonts.raleway(
                                fontSize: 70.0,
                                color: Color(0xffE1EFF2),
                              ),
                              // strutStyle: StrutStyle(height: 10),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Hi there, I am developer/Cyber security resercher. Currently doing my bachelor\' at SRM AP. I am a assosiate in the Satochi Lab under Nextech Lab - AP.',
                              style: GoogleFonts.raleway(
                                  color: Color(0xffE1EFF2),
                                  fontWeight: FontWeight.w100),
                            )
                          ],
                        )))),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    path.moveTo(size.width * 2 / 20, size.height / 20);
    path.lineTo(size.width * 19 / 20, size.height / 20);
    path.lineTo(size.width * 19 / 20, size.height * 18 / 20);
    path.lineTo(size.width * 2 / 20, size.height * 18 / 20);
    path.lineTo(size.width * 2 / 20, size.height / 20);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
