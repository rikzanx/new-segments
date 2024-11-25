import 'package:get/get.dart';
import 'package:flutter/material.dart';


class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (!isLoggedIn()) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }

  bool isLoggedIn() {
    // Cek apakah user login
    return true;
  }
}