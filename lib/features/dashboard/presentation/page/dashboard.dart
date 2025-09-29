import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalink/core/widgets/doc_button_secondary.dart';
import 'package:vitalink/features/Hospital/presentation/page/hospital_card_view_wrapper.dart';
import 'package:vitalink/features/Physician/presentation/pages/physician_preview.dart';
import 'package:vitalink/features/dashboard/controller/dashboard_controller.dart';
import 'package:vitalink/features/dashboard/presentation/widget/progress_card.dart';
import 'package:vitalink/features/dashboard/presentation/widget/service_menu.dart';
import 'package:vitalink/features/pharmacy/presentation/page/pharmacy_card_wrapper.dart';

class Dashboard extends ConsumerWidget {
  Widget getActiveServiceModel(String tab) {
    if (tab == "Hospital") {
      return HospitalCardViewWrapper();
    } else if (tab == "Pharmacy") {
      return PharmacyCardWrapper();
    } else if (tab == "Physician") {
      return PhysicianPreview();
    } else if (tab == "Pills") {
      return Center(child: Text("Pills"));
    }

    return Center(child: Text("Maybe it is loading"));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = ref.watch(serviceMenuController);
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ProgressCard(), ServiceMenu()],
            ),
          ),

          Expanded(child: getActiveServiceModel(activeTab)),
        ],
      ),
    );
  }
}
