import 'package:flutter_riverpod/legacy.dart';

enum BottomNavTabs { home, myPill, schedules, profiles, notifications }

final activeBottomNavigationBarProvider = StateProvider<BottomNavTabs>(
  (ref) => BottomNavTabs.home,
);
