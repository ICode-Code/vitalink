import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vitalink/app/routes/vt_route_address.dart';
import 'package:vitalink/core/constants/colors.dart';
import 'package:vitalink/core/constants/typo.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_navigation_conrtoller.dart';

class VtAuthIntroSection extends ConsumerWidget {
  const VtAuthIntroSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size extent = MediaQuery.of(context).size;
    final activeBarType = ref.watch(activeBottomNavigationBarProvider);

    return Container(
      width: extent.width,
      height: extent.height * 0.4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppThemeColor.greenPrime, AppThemeColor.greenSecondary],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Column(children: [
              
            ],
          ),

          Positioned(
            right: 20,
            top: 30,
            child: Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: GestureDetector(
                onTap: () {
                  context.go(VtRouteAddress.vtRouteHome);
                  ref
                      .read(activeBottomNavigationBarProvider.notifier)
                      .update((_) => BottomNavTabs.home);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: AppThemeColor.greenLight,
                    fontFamily: AppTypography.text_family,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: 10,
            bottom: 40,
            child: Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: TextStyle(
                      color: AppThemeColor.darkDefault,
                      fontFamily: AppTypography.text_family,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    "Wellcome to Vitalink.",
                    style: TextStyle(
                      color: AppThemeColor.darkDefault,
                      fontFamily: AppTypography.text_family,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
