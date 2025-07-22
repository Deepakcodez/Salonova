import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      getPages: AppPages.pages,
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      home: HomeView(),
    );
  }
}
