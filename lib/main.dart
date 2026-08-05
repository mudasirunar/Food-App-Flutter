import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/routes/app_routes.dart';
import 'package:project_app/routes/route_management.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.login,
    getPages: AppPages.pages,
  ));
}