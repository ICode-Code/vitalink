import 'package:flutter/widgets.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vitalink/app/component/vt_social_signin_button.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';

class VtAuthSocialWrapper extends StatelessWidget {
  const VtAuthSocialWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Or",
              style: TextStyle(
                fontFamily: AppTypography.text_family,
                fontSize: AppTypography.text_size - 2,
                color: AppThemeColor.darkDefault,
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              VtSocialSigninButton(icon: PhosphorIconsBold.googleLogo),
              VtSocialSigninButton(icon: PhosphorIconsFill.facebookLogo),
              VtSocialSigninButton(icon: PhosphorIconsFill.xLogo),
              VtSocialSigninButton(icon: PhosphorIconsFill.appleLogo),
            ],
          ),
        ],
      ),
    );
  }
}
