import 'package:flutter/widgets.dart';
import 'package:vitalink/features/vtPharmacy/presentation/widget/pharmacy_preview_card.dart';

class PharmacyCardWrapper extends StatelessWidget {
  const PharmacyCardWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PharmacyPreviewCard(),
          PharmacyPreviewCard(),
          PharmacyPreviewCard(),
          PharmacyPreviewCard(),
          PharmacyPreviewCard(),
          PharmacyPreviewCard(),
        ],
      ),
    );
  }
}
