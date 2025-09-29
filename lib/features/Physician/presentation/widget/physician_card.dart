import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';
import 'package:vitalink/core/widgets/doc_button_primary.dart';
import 'package:vitalink/features/Physician/presentation/widget/physician_info.dart';

class PhysicianCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(9, 30, 66, 0.25),
            blurRadius: 8,
            spreadRadius: -2,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: Color.fromRGBO(9, 30, 66, 0.08),
            blurRadius: 0,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
        color: const Color.fromARGB(255, 206, 255, 234),
        borderRadius: BorderRadius.circular(5),
        border: BoxBorder.all(color: AppThemeColor.greenSecondary, width: 1),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhysicianInfo(
                    title: "Languages spoken",
                    icon: FontAwesomeIcons.globe,
                    detail: "Amharic, English",
                  ),
                  PhysicianInfo(
                    title: "Area of expertise",
                    icon: FontAwesomeIcons.check,
                    detail: "Brain, Heart",
                  ),
                  PhysicianInfo(
                    title: "Affiliation",
                    icon: FontAwesomeIcons.check,
                    detail: "Unknown",
                  ),
                ],
              ),
            ],
          ),

          Positioned(
            top: -20,
            left: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/doctor_avatar.png',
                  width: 100,
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    PhysicianInfo(
                      title: "Dr. Eyob Amane",
                      icon: FontAwesomeIcons.userDoctor,
                      detail: "Cardiologist",
                    ),
                    PhysicianInfo(
                      title: "Experiance",
                      icon: FontAwesomeIcons.fileWord,
                      detail: "7 years",
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 10,
            right: 10,
            child: DocButtonPrimary(
              lable: "Connect",
              icon: FontAwesomeIcons.link,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
