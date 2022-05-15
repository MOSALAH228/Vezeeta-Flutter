import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class DoctorProfileRating extends StatelessWidget {
  const DoctorProfileRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            right: 8,
            top: 10,
          ),
          height: 22,
          width: 22,
          child: Icon(
            Icons.star,
            color: Colors.orange,
            size: 25,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            '4/5 تقييم العيادة',
            style: GoogleFonts.almarai(
              textStyle: textCard,
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: 17,
            top: 10,
          ),
          height: 22,
          width: 22,
          child: Icon(
            Icons.star,
            color: Colors.orange,
            size: 25,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            '4/5 تقييم المساعد',
            style: GoogleFonts.almarai(
              textStyle: textCard,
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}
