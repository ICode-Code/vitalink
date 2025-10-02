import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class PhysicianInfo extends StatelessWidget {
  final String title;
  final IconData icon;
  final String detail;

  const PhysicianInfo({
    super.key,
    required this.title,
    required this.icon,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1, right: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Icon(icon, size: 12, color: AppThemeColor.darkDefault),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: AppTypography.text_family,
                    fontSize: AppTypography.text_size,
                    color: AppThemeColor.darkDefault,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              " - $detail",
              style: TextStyle(
                fontFamily: AppTypography.text_family,
                fontSize: AppTypography.text_size - 1,
                color: AppThemeColor.greenSecondary,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
