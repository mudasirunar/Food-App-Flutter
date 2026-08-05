import 'package:get/get.dart';
import 'package:project_app/routes/app_routes.dart';
import 'package:project_app/screens/login_screem.dart';
import 'package:project_app/screens/signup_screen.dart';
import 'package:project_app/screens/home_screen.dart';
import 'package:project_app/screens/profile_screen.dart';
import 'package:project_app/screens/checkout_screen.dart';
import 'package:project_app/screens/settings_screen.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage>[
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
    GetPage(name: AppRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: AppRoutes.settings, page: () => const SettingsScreen()),
  ];
}
