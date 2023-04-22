import 'package:get/get.dart';
import 'package:mvvm_starter/src/view_model/home_view_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeViewModel(),
      fenix: true,
    );
  }
}
