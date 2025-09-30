import 'package:flutter/widgets.dart';

class VtLayerBackground extends StatelessWidget {
  final Widget child;
  const VtLayerBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset("assets/images/background.png", fit: BoxFit.cover),
        ),
        child,
      ],
    );
  }
}
