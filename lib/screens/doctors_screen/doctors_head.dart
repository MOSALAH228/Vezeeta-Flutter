import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vezeeta_flutter/notifier/doctors_notifier.dart';
import '../../constants.dart';

class DoctorsHead extends StatelessWidget {
  const DoctorsHead({
    Key? key,
    required this.doctorsNotifier,
  }) : super(key: key);

  final DoctorsNotifier doctorsNotifier;

  @override
  Widget build(BuildContext context) {
    var index;
    return Container(
      color: Colors.grey[200],
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
            ),
            height: 100,
            width: 120,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                doctorsNotifier.doctorsList[index].img,
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              // height: size.width - 290,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    doctorsNotifier.doctorsList[index].name,
                    style: GoogleFonts.almarai(
                      textStyle: textCard,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    doctorsNotifier.doctorsList[index].cat,
                    style: GoogleFonts.almarai(
                      textStyle: textCard,
                      color: kTextLightColor,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 17,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 17,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 17,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 17,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          size: 17,
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
                      color: kTextLightColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
