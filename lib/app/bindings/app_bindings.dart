import 'package:get/get.dart';
import 'package:salonova/app/controllers/home_view_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<AppBindingsController>(() => AppBindingsController(
    //    AppBindingsRepository(MyApi())));
    Get.lazyPut<HomeViewController>(() => HomeViewController());
  }
}


 final HomeViewController homeViewController = Get.find<HomeViewController>();