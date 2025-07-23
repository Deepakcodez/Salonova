import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:salonova/app/bindings/app_bindings.dart';
import 'package:salonova/app/routes/app_pages.dart';
import 'package:salonova/app/routes/app_routes.dart';
import 'package:salonova/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      getPages: AppPages.pages,
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial,
      home: child,
    ),
    child: const HomeView(),
  );
  
  
}
