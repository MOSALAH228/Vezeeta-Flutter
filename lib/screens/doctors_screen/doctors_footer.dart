import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class DoctorsFooter extends StatelessWidget {
  const DoctorsFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 35,
          width: 240,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              'متاح اليوم 04:00م',
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: kTextLightColor,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 35,
          width: 90,
          child: Center(
            child: Text(
              'احجز الان',
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.redAccent[700],
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}
