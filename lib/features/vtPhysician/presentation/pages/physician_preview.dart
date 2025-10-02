import 'package:flutter/material.dart';
import 'package:vitalink/features/vtPhysician/presentation/widget/physician_card.dart';

class PhysicianPreview extends StatelessWidget {
  const PhysicianPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PhysicianCard(),
          PhysicianCard(),
          PhysicianCard(),
          PhysicianCard(),
          PhysicianCard(),
          PhysicianCard(),
          PhysicianCard(),
          PhysicianCard(),
        ],
      ),
    );
  }
}
