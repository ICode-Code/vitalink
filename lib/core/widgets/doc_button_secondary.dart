import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/button_style.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class DocButtonSecondary extends StatelessWidget {
  final String lable;
  final VoidCallback? onPress;
  final bool isLoading;
  final DocButtonType type;
  final double? width;
  final double? height;
  final IconData? icon;
  final bool isActive;

  const DocButtonSecondary({
    Key? key,
    required this.lable,
    required this.onPress,
    this.isLoading = false,
    this.type = DocButtonType.primary,
    this.width,
    this.height,
    required this.icon,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: width ?? 120,
        height: height ?? 35,

        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isActive
                ? const Color.fromARGB(255, 142, 211, 178)
                : AppThemeColor.lightDefault,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(50, 50, 105, 0.15),
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                blurRadius: 1,
                spreadRadius: 0,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(5),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppThemeColor.greenSecondary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(5),
                    child: Icon(
                      icon,
                      size: 12,
                      color: AppThemeColor.lightDefault,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  lable,
                  style: TextStyle(
                    color: AppThemeColor.darkDefault,
                    fontFamily: AppTypography.text_family,
                    fontSize: AppTypography.text_size - 2,
                    fontWeight: FontWeight.bold,
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
