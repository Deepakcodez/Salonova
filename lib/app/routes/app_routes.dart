import 'package:get/get.dart';
import 'package:salonova/app/bindings/app_bindings.dart';
import 'package:salonova/views/home/home_view.dart';
import 'package:salonova/app/routes/app_pages.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: AppBindings(),
      // transition: Transition.fade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    // GetPage(
    //   name: Routes.LOGIN,
    //   page: () => LoginView(),
    //   binding: AppBinding(),
    // ),
    // GetPage(
    //   name: Routes.PRODUCT,
    //   page: () => ProductListView(),
    //   binding: AppBinding(),
    // ),
    // GetPage(
    //   name: Routes.CART,
    //   page: () => CartView(),
    //   binding: AppBinding(),
    // ),
  ];
}
