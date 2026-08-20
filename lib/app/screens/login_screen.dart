import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/routes/app_routes.dart';
import 'package:project_app/app/utils/app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -150,
            left: -200,
            right: -200,
            child: Container(
              height: 500,
              width: 400,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 92, 39, 176),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/app_logo.png', height: 120),
                    const SizedBox(height: 12),
                    Text(
                      AppStrings.welcomeText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                SizedBox(height: 400),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 92, 39, 176),
                    ),
                    hintText: AppStrings.emailHint,
                    label: Text(
                      AppStrings.emailLabel,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 92, 39, 176),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 92, 39, 176),
                    ),
                    hintText: AppStrings.passwordHint,
                    label: Text(
                      AppStrings.passwordLabel,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 92, 39, 176),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.forgetPassword,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.home);
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 92, 39, 176),
                      overlayColor: Colors.white.withValues(alpha: 0.2),
                    ),
                    child: Text(
                      AppStrings.loginButtonText,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(thickness: 1, color: Colors.grey),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        AppStrings.orLoginWith,
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    const Expanded(
                      child: Divider(thickness: 1, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/google_logo.png'),
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(width: 24),
                    Image(
                      image: AssetImage('assets/images/facebook_logo.png'),
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(width: 24),
                    Image(
                      image: AssetImage('assets/images/apple_logo.png'),
                      height: 16,
                      width: 16,
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.signup);
                      },
                      child: Text(AppStrings.registerText,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 56, 27, 163),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
