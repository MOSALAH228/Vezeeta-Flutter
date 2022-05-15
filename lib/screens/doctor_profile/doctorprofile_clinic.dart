import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';
import '../../constants.dart';

class DoctorProfileClinic extends StatelessWidget {
  const DoctorProfileClinic({
    Key? key,
    required this.doctorsNotifier,
  }) : super(key: key);

  final DoctorsNotifier doctorsNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
      ),
      height: 170,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 170,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'العيادة',
                  style: GoogleFonts.almarai(
                    textStyle: textCard,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                children: doctorsNotifier.currentDoctors.imgClinic
                    .map(
                      (e) => Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                          ),
                          height: 100,
                          width: 120,
                          child: Image.network(e)),
                    )
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
