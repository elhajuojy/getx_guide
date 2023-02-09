import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/provider/user_provider.dart';

class UserController extends GetxController with StateMixin<dynamic> {
  UserPorvider? userPorvider;
  UserController({@required this.userPorvider});

  @override
  void onInit() {
    _getListDataApi();
    super.onInit();
  }

  void _getListDataApi() {
    RxStatus.loading();
    userPorvider?.getUserData
        .then((value) => change(value, status: RxStatus.success()))
        .catchError((onError) => {change(onError, status: RxStatus.error())});
  }
}
