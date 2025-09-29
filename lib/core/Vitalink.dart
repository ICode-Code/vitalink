import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalink/core/widgets/docBottomNavigationBar/doc_bottom_naviagtion.dart';
import 'package:vitalink/core/widgets/doc_app_bar.dart';
import 'package:vitalink/features/dashboard/presentation/page/dashboard.dart';

class Vitalink extends StatelessWidget {
  const Vitalink({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: const DocAppBar(),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            // Dashboard(),
            Positioned.fill(
              child: Image.asset(
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 110), child: Dashboard()),
          ],
        ),

        bottomNavigationBar: DocBottomNaviagtion(),
      ),
    );
  }
}
