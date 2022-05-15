import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';

import '../../constants.dart';

class DoctorProfileDetails extends StatelessWidget {
  const DoctorProfileDetails({
    Key? key,
    required this.doctorsNotifier,
  }) : super(key: key);

  final DoctorsNotifier doctorsNotifier;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 50,
          width: 50,
          child: Icon(
            Icons.price_change_outlined,
            color: Colors.blue[700],
            size: 35,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              doctorsNotifier.currentDoctors.price,
              style: GoogleFonts.almarai(
                textStyle: textCard,
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'سعر الكشف',
              style: GoogleFonts.almarai(
                textStyle: textCard,
                fontSize: 15,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10, right: 35),
          height: 50,
          width: 50,
          child: Icon(
            Icons.watch_later_outlined,
            color: Colors.blue[700],
            size: 35,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              doctorsNotifier.currentDoctors.waiting,
              style: GoogleFonts.almarai(
                textStyle: textCard,
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'وقت الانتظار',
              style: GoogleFonts.almarai(
                textStyle: textCard,
                fontSize: 15,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
