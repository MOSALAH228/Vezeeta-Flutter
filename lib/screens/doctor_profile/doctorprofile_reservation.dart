import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../reservation_screen.dart';

class DoctorProfileReservation extends StatelessWidget {
  const DoctorProfileReservation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'اختر ميعاد حجزك',
          style: GoogleFonts.almarai(
            textStyle: textCard,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReservationScreen(),
                  ),
                );
              },
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 60,
                    ),
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'اليوم',
                        style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    margin: EdgeInsets.only(
                      right: 60,
                    ),
                    width: 80,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Center(
                        child: Text(
                          "من 4م الي 11م",
                          style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent[700],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 60,
                    ),
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'احجز',
                        style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReservationScreen(),
                  ),
                );
              },
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'غدا',
                        style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    width: 80,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Center(
                        child: Text(
                          "من 4م الي 11م",
                          style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent[700],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'احجز',
                        style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReservationScreen(),
                  ),
                );
              },
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'الاحد 1/5',
                        style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    width: 80,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Center(
                        child: Text(
                          "من 4م الي 11م",
                          style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent[700],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    width: 80,
                    height: 30,
                    child: Center(
                      child: Text(
                        'احجز',
                        style: GoogleFonts.almarai(
                            textStyle: textCard,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'الدخول بأسبقية الحضور',
          style: GoogleFonts.almarai(
            textStyle: textCard,
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
