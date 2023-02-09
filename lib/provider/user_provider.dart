import 'package:get/get.dart';

class UserPorvider extends GetConnect {
  Future<dynamic> get getUserData => get("https://reqres.in/api/users?page=2");
}
