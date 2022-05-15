import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';

import '../../constants.dart';

class DoctorProfileHead extends StatelessWidget {
  const DoctorProfileHead({
    Key? key,
    required this.doctorsNotifier,
  }) : super(key: key);

  final DoctorsNotifier doctorsNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            height: 100,
            width: 120,
            child: Image.network(
              doctorsNotifier.currentDoctors.img,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 35,
              ),
              Text(
                doctorsNotifier.currentDoctors.name,
                style: GoogleFonts.almarai(
                  textStyle: textCard,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_half_rounded,
                      size: 25,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'التقييم العام من 1004 زائر',
                style: GoogleFonts.almarai(
                  textStyle: textCard,
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                doctorsNotifier.currentDoctors.cat,
                style: GoogleFonts.almarai(
                  textStyle: textCard,
                  color: kTextLightColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
