import 'package:flutter/widgets.dart';
import 'package:vitalink/features/Hospital/presentation/widget/hospital_card.dart';

class HospitalCardViewWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Wrap(
        children: [
          HospitalCard(),
          HospitalCard(),
          HospitalCard(),
          HospitalCard(),
          HospitalCard(),
          HospitalCard(),
        ],
      ),
    );
  }
}
