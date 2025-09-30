import 'package:flutter/material.dart';
import 'package:vitalink/app/routes/vt_route.dart';

class Vitalink extends StatelessWidget {
  const Vitalink({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Vitalink",
      routerConfig: vtRoute.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
