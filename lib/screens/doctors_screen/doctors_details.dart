import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';
import '../../constants.dart';
import 'doctors_footer.dart';

class DoctorsDetails extends StatelessWidget {
  const DoctorsDetails({
    Key? key,
    required this.doctorsNotifier,
  }) : super(key: key);

  final DoctorsNotifier doctorsNotifier;

  @override
  Widget build(BuildContext context) {
    var index;
    return Row(
      children: [
        Row(
          children: [
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 25,
                  width: 25,
                  child: Image.network(
                    doctorsNotifier.doctorsList[index].imgIcon,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'جلدية متخصص في تجميل وليزر الأطفال',
                  style: GoogleFonts.almarai(
                    textStyle: textCard,
                    color: kTextLightColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              height: 22,
              width: 22,
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.blue[700],
                size: 23,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              doctorsNotifier.doctorsList[index].location,
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: kTextLightColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              height: 22,
              width: 22,
              child: Icon(
                Icons.price_change_outlined,
                color: Colors.blue[700],
                size: 23,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'سعر الكشف:',
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: kTextLightColor,
                fontSize: 12,
              ),
            ),
            Text(
              doctorsNotifier.doctorsList[index].price,
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: kTextLightColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              height: 22,
              width: 22,
              child: Icon(
                Icons.watch_later_outlined,
                color: Colors.blue[700],
                size: 23,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'مدة الانتظار:',
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: kPrimaryColor,
                fontSize: 12,
              ),
            ),
            Text(
              doctorsNotifier.doctorsList[index].waiting,
              style: GoogleFonts.almarai(
                textStyle: textCard,
                color: kPrimaryColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 13,
        ),
        DoctorsFooter(),
      ],
    );
  }
}
