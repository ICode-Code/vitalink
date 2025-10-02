import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/colors.dart';

class VtSocialSigninButton extends StatelessWidget {
  final IconData icon;
  const VtSocialSigninButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          margin: EdgeInsetsGeometry.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppThemeColor.greenLight,
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
          ),
          width: 45,
          height: 35,
          child: Icon(icon, size: 22, color: AppThemeColor.darkDefault),
        ),
      ),
    );
  }
}
