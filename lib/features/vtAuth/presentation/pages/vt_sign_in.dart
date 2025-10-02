import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalink/app/component/vt_button_auth.dart';
import 'package:vitalink/app/component/vt_input_primary.dart';
import 'package:vitalink/app/component/vt_layer_background.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_naviagtion.dart';
import 'package:vitalink/features/vtAuth/presentation/widgets/vt_auth_into_section.dart';
import 'package:vitalink/features/vtAuth/presentation/widgets/vt_auth_social_wrapper.dart';

class VtSignIn extends StatelessWidget {
  const VtSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size extent = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(children: [VtAuthIntroSection()]),

          Positioned.fill(
            top: extent.height * 0.35,
            child: Container(
              width: extent.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    blurRadius: 24,
                    spreadRadius: 0,
                    offset: Offset(0, 6),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.08),
                    blurRadius: 0,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
                color: AppThemeColor.lightDefault,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: VtLayerBackground(
                border: true,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 35,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 146, 228, 188),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: AppTypography.text_family,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            VtInputPrimary(lable: "Email"),
                            VtInputPrimary(lable: "Password"),
                            SizedBox(height: 30),
                            VtButtonAuth(),
                            VtAuthSocialWrapper(),
                          ],
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
    );
  }
}
