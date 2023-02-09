import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/binding/user_binding.dart';
import 'package:getx_guide/view/user_view.dart';

void main() => runApp(GetMaterialApp(
      home: UserView(),
      initialBinding: UserBinding(),
      debugShowCheckedModeBanner: false,
      title: "Getx Flutter UI",
    ));
