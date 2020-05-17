import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webpage_testing/services/github.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:webpage_testing/extentions/translate_onhover.dart';
import 'package:webpage_testing/extentions/hoven_extention.dart';
import 'dart:html' as html;

class SecondIntro extends StatefulWidget {
  @override
  _SecondIntroState createState() => _SecondIntroState();
}

class _SecondIntroState extends State<SecondIntro> {
  GithubService _githubService = GithubService();
  List<dynamic> repos = ['Projects'];
  Future getrepos;

  @override
  void initState() {
    super.initState();
    getrepos = _getrepo();
  }

  _getrepo() async {
    return await _githubService.getRepolist();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getrepos.then((value) {
        repos = value;
      }),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
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
                                    'https://github.com/ASSASSIN-363/${repos[index]}',
                                    'GitHub');
                              },
                              child: Image.asset(
                                'assets/images/${repos[index]}.jpg',
                                fit: BoxFit.contain,
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '${repos[index]}',
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
                  itemCount: repos.length,
                  viewportFraction: 0.4,
                  scale: 0.3,
                ),
              ],
            ),
          );
        } else {
          return Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Stack(
              children: <Widget>[
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
                                    'https://github.com/ASSASSIN-363/${repos[index]}',
                                    'GitHub');
                              },
                              child: Image.asset(
                                'images/${repos[index]}.jpg',
                                fit: BoxFit.contain,
                              ),
                            ).showCursorOnHover.moveUpOnHover,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '${repos[index]}',
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
                  itemCount: repos.length,
                  viewportFraction: 0.4,
                  scale: 0.3,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
