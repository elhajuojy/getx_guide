import 'package:get/get.dart';
import 'package:getx_guide/controller/user_controller.dart';
import 'package:getx_guide/provider/user_provider.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserController(userPorvider: Get.put(UserPorvider())));
  }
}
