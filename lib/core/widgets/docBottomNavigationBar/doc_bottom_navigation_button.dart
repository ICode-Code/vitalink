import 'package:flutter/material.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_navigation_conrtoller.dart';

class DocBottomNavigationButton extends StatelessWidget {
  final String label;
  final IconData defaultIcon;
  final IconData activeIcon;
  final bool isActive;
  final VoidCallback onPress;
  final BottomNavTabs type;

  const DocBottomNavigationButton({
    super.key,
    required this.label,
    required this.defaultIcon,
    required this.activeIcon,
    required this.onPress,
    required this.type,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Column(
            children: [
              Icon(
                isActive ? activeIcon : defaultIcon,
                size: 19,
                color: isActive ? Colors.white : AppThemeColor.greenLight,
              ),
              SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? Colors.white : AppThemeColor.greenLight,
                  fontFamily: AppTypography.text_family,
                  fontSize: AppTypography.text_size - 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
