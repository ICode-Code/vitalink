import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class DocAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DocAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning Eyob",
              style: TextStyle(
                fontFamily: AppTypography.text_family,
                fontSize: AppTypography.text_size,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              "Work hard, stay humble.",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: AppTypography.text_family,
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppThemeColor.greenSecondary,
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
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
              color: AppThemeColor.lightDefault,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
