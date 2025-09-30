import 'package:flutter/material.dart';

class VtSharedLayout extends StatelessWidget {
  final Widget body;
  final Widget bottomNavbar;

  const VtSharedLayout({
    super.key,
    required this.body,
    required this.bottomNavbar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body, bottomNavigationBar: bottomNavbar);
  }
}
