import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/widgets/doc_button_primary.dart';
import 'package:vitalink/features/vtPhysician/presentation/widget/physician_info.dart';

class PharmacyPreviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size extent = MediaQuery.of(context).size;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: extent.width * 0.9,
          height: 90,
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
            color: const Color.fromARGB(80, 0, 191, 99),
            border: Border.all(color: AppThemeColor.greenPrime, width: 2),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PhysicianInfo(
                          title: "Droge | Gerji",
                          icon: FontAwesomeIcons.mortarPestle,
                          detail: "Near Bas Stattion",
                        ),
                        PhysicianInfo(
                          title: "Contact",
                          icon: FontAwesomeIcons.phone,
                          detail: "Unknown",
                        ),
                      ],
                    ),
                  ],
                ),

                Positioned(
                  top: -25,
                  left: -10,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/pharmacy_avator.png',
                          width: 90,
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        DocButtonPrimary(
                          lable: "Visit",
                          icon: FontAwesomeIcons.eye,
                          width: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
