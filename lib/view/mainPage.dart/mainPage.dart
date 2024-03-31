import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newprojects/routes/appPage.dart';

import '../../bindings/bindings.dart';
import '../ServicePage/recommendedServicePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(414, 896),
      builder: (context, _) {
        return GetMaterialApp(
            getPages: AppPage.routes,
            initialBinding: GetxControllerBindings(),
            title: 'Badge99',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: RecommendedServicePage());
      },
    );
  }
}