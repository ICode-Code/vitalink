import 'package:flutter/cupertino.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class VtButtonAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.45),
            blurRadius: 20,
            spreadRadius: -20,
            offset: Offset(0, 25),
          ),
        ],
        gradient: LinearGradient(
          colors: [AppThemeColor.greenPrime, AppThemeColor.greenSecondary],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 5),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              fontSize: 15,
              color: AppThemeColor.darkDefault,
              fontFamily: AppTypography.text_family,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
