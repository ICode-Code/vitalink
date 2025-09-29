import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalink/core/constants/typo.dart';
import 'package:vitalink/core/widgets/doc_button_secondary.dart';
import 'package:vitalink/features/dashboard/controller/dashboard_controller.dart';

class ServiceMenu extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = ref.watch(serviceMenuController);
    final extent = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: extent.width,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Our Service",
                style: TextStyle(
                  fontFamily: AppTypography.text_family,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              color: Colors.transparent,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DocButtonSecondary(
                      onPress: () => ref
                          .read(serviceMenuController.notifier)
                          .update((_) => "Hospital"),
                      lable: "Hospital",
                      icon: FontAwesomeIcons.hospital,
                      width: 130,
                      isActive: activeTab == "Hospital",
                    ),
                    DocButtonSecondary(
                      onPress: () => ref
                          .read(serviceMenuController.notifier)
                          .update((_) => "Pharmacy"),
                      lable: "Pharmacy",
                      isActive: activeTab == "Pharmacy",
                      icon: FontAwesomeIcons.mortarPestle,
                      width: 130,
                    ),
                    DocButtonSecondary(
                      onPress: () => ref
                          .read(serviceMenuController.notifier)
                          .update((_) => "Physician"),
                      lable: "Physician",
                      isActive: activeTab == "Physician",
                      icon: FontAwesomeIcons.userDoctor,
                      width: 120,
                    ),
                    DocButtonSecondary(
                      onPress: () => ref
                          .read(serviceMenuController.notifier)
                          .update((_) => "Pills"),
                      lable: "Pills",
                      isActive: activeTab == "Pills",
                      icon: FontAwesomeIcons.prescriptionBottleMedical,
                      width: 110,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
