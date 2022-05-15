import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';
import '../../constants.dart';

class DoctorProfileLocation extends StatelessWidget {
  const DoctorProfileLocation({
    Key? key,
    required this.doctorsNotifier,
  }) : super(key: key);

  final DoctorsNotifier doctorsNotifier;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 8),
          height: 22,
          width: 22,
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.blue[700],
            size: 35,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          doctorsNotifier.currentDoctors.location,
          style: GoogleFonts.almarai(
            textStyle: textCard,
            fontSize: 15,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
