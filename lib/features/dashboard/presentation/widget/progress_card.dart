import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class ProgressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 350,
        height: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(100, 150, 144, 0.224),
              blurRadius: 6,
              spreadRadius: 0,
              offset: Offset(0, 3),
            ),
            BoxShadow(
              color: Color.fromRGBO(100, 150, 144, 0.224),
              blurRadius: 6,
              spreadRadius: 0,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [AppThemeColor.greenPrime, AppThemeColor.greenSecondary],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          ),
        ),
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "0%",
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: AppTypography.text_family,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.chartSimple, size: 14),
                        SizedBox(width: 10),
                        Text(
                          "Your Progress",
                          style: TextStyle(
                            fontFamily: AppTypography.text_family,
                            fontSize: AppTypography.text_size - 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          blurRadius: 15,
                          spreadRadius: -3,
                          offset: Offset(0, 10),
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          blurRadius: 6,
                          spreadRadius: -2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: CircularPercentIndicator(
                      radius: 45,
                      lineWidth: 6,
                      percent: 0.65,
                      animation: true,
                      animationDuration: 1500,
                      progressColor: AppThemeColor.greenPrime,
                      progressBorderColor: AppThemeColor.greenPrime,
                      backgroundColor: AppThemeColor.lightDefault,
                      center: Container(
                        decoration: BoxDecoration(
                          color: AppThemeColor
                              .lightDefault, // background color for the center
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        width: 75,
                        height: 75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "DAY",
                              style: TextStyle(
                                fontSize: AppTypography.text_size + 2,
                                fontWeight: FontWeight.w900,
                                fontFamily: AppTypography.text_family,
                                color: AppThemeColor.darkDefault,
                                letterSpacing: 0.01,
                                wordSpacing: 0,
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                letterSpacing: 0.01,
                                wordSpacing: 0,
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontFamily: AppTypography.text_family,
                                color: AppThemeColor.darkDefault,
                              ),
                            ),
                          ],
                        ),
                      ),
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
