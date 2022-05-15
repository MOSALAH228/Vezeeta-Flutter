import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta_flutter/constants.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';
import 'package:vezeeta_flutter/screens/home_screen.dart';
import 'package:vezeeta_flutter/screens/registration_screen.dart';
import 'package:vezeeta_flutter/screens/reservation_screen.dart';
import 'doctorprofile_clinic.dart';
import 'doctorprofile_details.dart';
import 'doctorprofile_head.dart';
import 'doctorprofile_information.dart';
import 'doctorprofile_location.dart';
import 'doctorprofile_rating.dart';
import 'doctorprofile_reservation.dart';

class DoctorProfileScreen extends StatefulWidget {
  @override
  _DoctorProfileScreenState createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    DoctorsNotifier doctorsNotifier =
        Provider.of<DoctorsNotifier>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // centerTitle: false,
        title: Text(
          'بيانات الدكتور',
          style: GoogleFonts.almarai(
            textStyle: textCard,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DoctorProfileHead(doctorsNotifier: doctorsNotifier),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: kMyColor,
                    ),
                  ),
                  ListView(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 15,
                            ),
                            height: 430,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: <Widget>[
                                Container(
                                  height: 430,
                                  width: 360,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 12),
                                        blurRadius: 20,
                                        color: Colors.black12,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    DoctorProfileDetails(
                                        doctorsNotifier: doctorsNotifier),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                      width: 350.0,
                                      child: Divider(
                                        color: Colors.grey[900],
                                      ),
                                    ),
                                    DoctorProfileLocation(
                                        doctorsNotifier: doctorsNotifier),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                      width: 350.0,
                                      child: Divider(
                                        color: Colors.grey[900],
                                      ),
                                    ),
                                    DoctorProfileReservation(),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                      width: 350.0,
                                      child: Divider(
                                        color: Colors.grey[900],
                                      ),
                                    ),
                                    DoctorProfileRating(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DoctorProfileClinic(doctorsNotifier: doctorsNotifier),
                          DoctorProfileInformation(
                              doctorsNotifier: doctorsNotifier),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
