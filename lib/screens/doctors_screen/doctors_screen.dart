import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/api/doctor_api.dart';
import 'package:vezeeta_flutter/constants.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';
import 'package:vezeeta_flutter/screens/doctor_profile/doctorProfile_screen.dart';
import 'package:provider/provider.dart';
import 'doctors_details.dart';
import 'doctors_head.dart';

class DoctorsScreen extends StatefulWidget {
  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  void initState() {
    DoctorsNotifier doctorsNotifier =
        Provider.of<DoctorsNotifier>(context, listen: false);

    getDoctors(doctorsNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DoctorsNotifier doctorsNotifier = Provider.of<DoctorsNotifier>(context);

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
          'تبحث في',
          style: GoogleFonts.almarai(
            textStyle: textCard,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.right,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'ابحث بإسم الدكتور أو المستشفي'),
              ),
            ),
            // SizedBox(
            //   height: kDefaultPadding / 2,
            // ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: kMyColor,
                    ),
                  ),
                  ListView.builder(
                      itemCount: doctorsNotifier.doctorsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () {
                                  doctorsNotifier.currentDoctors =
                                      doctorsNotifier.doctorsList[index];
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DoctorProfileScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 15,
                                  ),
                                  height: 280,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: <Widget>[
                                      Container(
                                        height: 280,
                                        width: 360,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
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
                                      Expanded(
                                        child: Stack(
                                          children: <Widget>[
                                            DoctorsHead(
                                                doctorsNotifier:
                                                    doctorsNotifier),
                                            SizedBox(
                                              height: 9,
                                            ),
                                            DoctorsDetails(
                                                doctorsNotifier:
                                                    doctorsNotifier),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
