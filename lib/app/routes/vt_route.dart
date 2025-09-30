import 'package:go_router/go_router.dart';
import 'package:vitalink/app/component/vt_shared_layout.dart';
import 'package:vitalink/app/routes/vt_route_address.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_naviagtion.dart';
import 'package:vitalink/features/vtAuth/presentation/pages/vt_sign_in.dart';
import 'package:vitalink/features/vtDashboard/presentation/page/dashboard.dart';
import 'package:vitalink/features/vtMypill/presentation/pages/vt_client_pill.dart';

class vtRoute {
  static final route = GoRouter(
    initialLocation: '/home',
    redirect: (context, state) {
      return null;
    },

    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return VtSharedLayout(
            body: child,
            bottomNavbar: DocBottomNaviagtion(),
          );
        },
        routes: [
          GoRoute(
            path: VtRouteAddress.vtRouteHome,
            builder: (context, state) => Dashboard(),
          ),
          GoRoute(
            path: VtRouteAddress.vtClientPill,
            builder: (context, state) => VtClientPill(),
          ),
        ],
      ),

      GoRoute(
        path: VtRouteAddress.vtRouteSignIn,
        builder: (context, state) => VtSignIn(),
      ),
    ],
  );
}
