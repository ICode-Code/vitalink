import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vitalink/app/component/vt_layer_background.dart';
import 'package:vitalink/core/widgets/doc_app_bar.dart';
import 'package:vitalink/features/vtHospital/presentation/page/hospital_card_view_wrapper.dart';
import 'package:vitalink/features/vtPhysician/presentation/pages/physician_preview.dart';
import 'package:vitalink/features/vtDashboard/controller/dashboard_controller.dart';
import 'package:vitalink/features/vtDashboard/presentation/widget/progress_card.dart';
import 'package:vitalink/features/vtDashboard/presentation/widget/service_menu.dart';
import 'package:vitalink/features/vtPharmacy/presentation/page/pharmacy_card_wrapper.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

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
    return Scaffold(
      appBar: DocAppBar(),
      extendBodyBehindAppBar: true,
      body: VtLayerBackground(
        child: Padding(
          padding: EdgeInsets.only(top: 110),
          child: Container(
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
          ),
        ),
      ),
    );
  }
}
