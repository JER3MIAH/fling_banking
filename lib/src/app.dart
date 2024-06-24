import 'package:fling_banking/src/features/auth/logic/blocs/auth_state.dart';
import 'package:fling_banking/src/features/navigation/pages/all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'shared/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio Web App',
        theme: appTheme,
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      ),
    );
  }
}
