import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/widgets/doc_button_primary.dart';
import 'package:vitalink/features/Physician/presentation/widget/physician_info.dart';

class HospitalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      clipBehavior: Clip.hardEdge,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 180,
          height: 190,
          margin: EdgeInsetsGeometry.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 12,
                spreadRadius: 0,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            border: BoxBorder.all(color: AppThemeColor.greenPrime),
            color: const Color.fromARGB(80, 0, 191, 99),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  SizedBox(height: 50),
                  PhysicianInfo(
                    title: "Location",
                    icon: FontAwesomeIcons.mapPin,
                    detail: "Addis Abeba, Ethiopia",
                  ),
                  PhysicianInfo(
                    title: "Daily Client",
                    icon: FontAwesomeIcons.userInjured,
                    detail: "120,000",
                  ),
                  PhysicianInfo(
                    title: "Type",
                    icon: FontAwesomeIcons.crosshairs,
                    detail: "Public",
                  ),
                ],
              ),

              Positioned(
                bottom: 10,
                right: 10,
                child: DocButtonPrimary(
                  lable: "Locate",
                  icon: FontAwesomeIcons.mapLocation,
                  width: 90,
                ),
              ),
              Positioned(
                top: -40,
                left: 40,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/hospital_avatar.png",
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
