import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/button_style.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';
import 'package:vitalink/core/widgets/button_loading.dart';

class DocButtonPrimary extends StatelessWidget {
  final String lable;
  final VoidCallback? onPress;
  final bool isLoading;
  final DocButtonType type;
  final double? width;
  final double? height;
  final IconData? icon;
  const DocButtonPrimary({
    super.key,
    required this.lable,
    this.onPress,
    this.isLoading = false,
    this.type = DocButtonType.primary,
    this.width,
    this.height,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,

      child: InkWell(
        onTap: isLoading ? null : onPress,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                blurRadius: 6,
                spreadRadius: 0,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.23),
                blurRadius: 6,
                spreadRadius: 0,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [AppThemeColor.greenPrime, AppThemeColor.greenSecondary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            child: isLoading
                ? pp_ButtonLoading()
                : Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: 4,
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(icon, size: 13, color: AppThemeColor.lightDefault),
                        SizedBox(width: 10),
                        Text(
                          lable,
                          style: TextStyle(
                            color: AppThemeColor.lightDefault,
                            fontWeight: FontWeight.w900,
                            fontSize: AppTypography.text_size - 1,
                            fontFamily: AppTypography.text_family,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
