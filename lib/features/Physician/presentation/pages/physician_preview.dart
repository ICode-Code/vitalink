import 'package:flutter/material.dart';
import 'package:vitalink/features/Physician/presentation/widget/physician_card.dart';

class PhysicianPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
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
