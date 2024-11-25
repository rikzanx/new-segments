import 'package:get/get.dart';
import 'package:securitypg2/app/modules/home/bindings/home_binding.dart';
import 'package:securitypg2/app/modules/home/views/home_view.dart';
import 'package:securitypg2/app/modules/login/views/login_view.dart';
import 'package:securitypg2/app/modules/login/bindings/login_binding.dart';
import 'package:securitypg2/app/middleware/auth_middleware.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding()
    ),
  ];
}
