import 'package:flutter/cupertino.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class VtButtonAuth extends StatelessWidget {
  const VtButtonAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.12),
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.24),
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
        ],
        gradient: LinearGradient(
          colors: [AppThemeColor.greenPrime, AppThemeColor.greenPrime],
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
              fontSize: 16,
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
