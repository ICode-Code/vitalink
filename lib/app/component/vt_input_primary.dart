import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class VtInputPrimary extends StatelessWidget {
  final String lable;

  const VtInputPrimary({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: TextStyle(
              fontFamily: AppTypography.text_family,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: AppThemeColor.lightDefault,
              border: Border(
                // left: BorderSide(color: AppThemeColor.greenPrime, width: 4),
                bottom: BorderSide(color: AppThemeColor.greenPrime, width: 2),
              ),
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
            child: TextField(
              decoration: InputDecoration(
                hintText: lable == "Password"
                    ? '*************'
                    : 'Enter your $lable',
                hintStyle: TextStyle(
                  fontFamily: AppTypography.text_family,
                  fontSize: 10,
                  color: const Color.fromARGB(255, 169, 173, 171),
                  fontWeight: FontWeight.w900,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 10,
                ),
                isDense: true,
              ),
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontFamily: AppTypography.text_family,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
