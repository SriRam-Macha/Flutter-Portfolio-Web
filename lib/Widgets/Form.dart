import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(75.0),
      child: Form(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextFormField(
                      cursorColor: Color(0xffE1EFF2),
                      style: GoogleFonts.raleway(color: Color(0xffE1EFF2)),
                      decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: GoogleFonts.raleway(
                            color: Color(0xffE1EFF2),
                          ),
                          focusColor: Color(0xffE1EFF2),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          ))),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextFormField(
                      cursorColor: Color(0xffE1EFF2),
                      style: GoogleFonts.raleway(color: Color(0xffE1EFF2)),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: GoogleFonts.raleway(
                            color: Color(0xffE1EFF2),
                          ),
                          focusColor: Color(0xffE1EFF2),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          ))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextFormField(
                      cursorColor: Color(0xffE1EFF2),
                      style: GoogleFonts.raleway(color: Color(0xffE1EFF2)),
                      decoration: InputDecoration(
                          labelText: 'Phone',
                          labelStyle: GoogleFonts.raleway(
                            color: Color(0xffE1EFF2),
                          ),
                          focusColor: Color(0xffE1EFF2),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          ))),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextFormField(
                      cursorColor: Color(0xffE1EFF2),
                      style: GoogleFonts.raleway(color: Color(0xffE1EFF2)),
                      decoration: InputDecoration(
                          labelText: 'Address',
                          labelStyle: GoogleFonts.raleway(
                            color: Color(0xffE1EFF2),
                          ),
                          focusColor: Color(0xffE1EFF2),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xffE1EFF2),
                          ))),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextFormField(
                  cursorColor: Color(0xffE1EFF2),
                  style: GoogleFonts.raleway(color: Color(0xffE1EFF2)),
                  decoration: InputDecoration(
                      labelText: 'Subject',
                      labelStyle: GoogleFonts.raleway(
                        color: Color(0xffE1EFF2),
                      ),
                      focusColor: Color(0xffE1EFF2),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffE1EFF2),
                      )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffE1EFF2),
                      ))),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextFormField(
                  cursorColor: Color(0xffE1EFF2),
                  style: GoogleFonts.raleway(color: Color(0xffE1EFF2)),
                  maxLines: 99,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Type your message here...',
                      labelStyle: GoogleFonts.raleway(
                        color: Color(0xffE1EFF2),
                      ),
                      focusColor: Color(0xffE1EFF2),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffE1EFF2),
                      )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffE1EFF2),
                      ))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FlatButton(
                  color: Color(0xffE1EFF2),
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'Submit',
                    style: GoogleFonts.raleway(fontSize: 20.0),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
