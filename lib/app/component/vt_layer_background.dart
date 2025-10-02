import 'package:flutter/widgets.dart';

class VtLayerBackground extends StatelessWidget {
  final bool border;
  final Widget child;
  const VtLayerBackground({
    super.key,
    required this.child,
    this.border = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: border
                ? BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                : BorderRadius.zero,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
