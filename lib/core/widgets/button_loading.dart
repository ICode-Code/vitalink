import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/colors.dart';

class pp_ButtonLoading extends StatelessWidget {
  const pp_ButtonLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(AppThemeColor.darkDefault),
      ),
    );
  }
}
