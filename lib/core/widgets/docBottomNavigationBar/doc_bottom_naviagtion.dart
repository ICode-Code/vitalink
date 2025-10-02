import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vitalink/app/routes/vt_route_address.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_navigation_button.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_navigation_conrtoller.dart';

class DocBottomNaviagtion extends ConsumerWidget {
  const DocBottomNaviagtion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTabType = ref.watch(activeBottomNavigationBarProvider);
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(38, 57, 77, 1),
                blurRadius: 30,
                spreadRadius: -10,
                offset: Offset(0, 20),
              ),
            ],
            border: Border(
              top: BorderSide(color: AppThemeColor.greenLight, width: 2),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: const Color.fromARGB(150, 0, 126, 90),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DocBottomNavigationButton(
                type: BottomNavTabs.home,
                onPress: () {
                  ref
                      .read(activeBottomNavigationBarProvider.notifier)
                      .update((_) => BottomNavTabs.home);
                  context.go(VtRouteAddress.vtRouteHome);
                },
                isActive: activeTabType == BottomNavTabs.home,
                label: "App",
                defaultIcon: PhosphorIconsBold.squaresFour,
                activeIcon: PhosphorIconsFill.squaresFour,
              ),
              DocBottomNavigationButton(
                type: BottomNavTabs.myPill,
                onPress: () {
                  ref
                      .read(activeBottomNavigationBarProvider.notifier)
                      .update((_) => BottomNavTabs.myPill);
                  context.go(VtRouteAddress.vtClientPill);
                },
                isActive: activeTabType == BottomNavTabs.myPill,
                label: "My Pill",
                defaultIcon: PhosphorIconsBold.pill,
                activeIcon: PhosphorIconsFill.pill,
              ),
              DocBottomNavigationButton(
                type: BottomNavTabs.schedules,
                onPress: () => ref
                    .read(activeBottomNavigationBarProvider.notifier)
                    .update((_) => BottomNavTabs.schedules),
                isActive: activeTabType == BottomNavTabs.schedules,
                label: "Schedules",
                defaultIcon: PhosphorIconsBold.calendar,
                activeIcon: PhosphorIconsFill.calendar,
              ),
              DocBottomNavigationButton(
                type: BottomNavTabs.notifications,
                onPress: () => ref
                    .read(activeBottomNavigationBarProvider.notifier)
                    .update((_) => BottomNavTabs.notifications),
                isActive: activeTabType == BottomNavTabs.notifications,
                label: "Notification",
                defaultIcon: PhosphorIconsBold.bell,
                activeIcon: PhosphorIconsFill.bell,
              ),
              DocBottomNavigationButton(
                type: BottomNavTabs.profiles,
                onPress: () {
                  ref
                      .read(activeBottomNavigationBarProvider.notifier)
                      .update((_) => BottomNavTabs.profiles);

                  context.go(VtRouteAddress.vtRouteSignIn);
                },
                isActive: activeTabType == BottomNavTabs.profiles,
                label: "Profile",
                defaultIcon: PhosphorIconsBold.userCircle,
                activeIcon: PhosphorIconsFill.userCircle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
