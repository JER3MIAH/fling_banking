import 'package:fling_banking/src/features/navigation/pages/all_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'shared/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Web App',
      theme: appTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
