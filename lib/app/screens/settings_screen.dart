import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/routes/app_routes.dart';
import 'package:project_app/app/utils/app_strings.dart';
import 'package:project_app/app/widgets/nav_icon.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 3;

  bool _isVegetarian = false;
  bool _isSpicy = true;
  bool _notifications = true;
  bool _darkMode = false;

  final List<String> routes = [
    AppRoutes.home,
    AppRoutes.profile,
    AppRoutes.checkout,
    AppRoutes.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.offNamed(AppRoutes.home);
          },
        ),
        title: const Text(
          AppStrings.settingsTitle,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppStrings.foodPreferencesHeader,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
            ),
            const SizedBox(height: 10),
            SwitchListTile(
              activeThumbColor: const Color.fromARGB(255, 92, 39, 176),
              title: const Text(AppStrings.vegetarianTitle),
              subtitle: const Text(AppStrings.vegetarianSubtitle),
              value: _isVegetarian,
              onChanged: (val) {
                setState(() {
                  _isVegetarian = val;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              activeThumbColor: const Color.fromARGB(255, 92, 39, 176),
              title: const Text(AppStrings.spicyTitle),
              subtitle: const Text(AppStrings.spicySubtitle),
              value: _isSpicy,
              onChanged: (val) {
                setState(() {
                  _isSpicy = val;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              AppStrings.appSettingsHeader,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
            ),
            const SizedBox(height: 10),
            SwitchListTile(
              activeThumbColor: const Color.fromARGB(255, 92, 39, 176),
              title: const Text(AppStrings.notificationsTitle),
              subtitle: const Text(AppStrings.notificationsSubtitle),
              value: _notifications,
              onChanged: (val) {
                setState(() {
                  _notifications = val;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              activeThumbColor: const Color.fromARGB(255, 92, 39, 176),
              title: const Text(AppStrings.darkModeTitle),
              subtitle: const Text(AppStrings.darkModeSubtitle),
              value: _darkMode,
              onChanged: (val) {
                setState(() {
                  _darkMode = val;
                });
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.location_on_outlined,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
              title: const Text(AppStrings.savedAddresses),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.payment_outlined,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
              title: const Text(AppStrings.paymentMethods),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.offAllNamed(AppRoutes.login);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  AppStrings.logoutButton,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index != 3) {
            Get.offNamed(routes[index]);
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: NavIcon(
              iconData: Icons.home_rounded,
              isSelected: _selectedIndex == 0,
            ),
            label: AppStrings.navHome,
          ),
          BottomNavigationBarItem(
            icon: NavIcon(
              iconData: Icons.person_outline_rounded,
              isSelected: _selectedIndex == 1,
            ),
            label: AppStrings.navProfile,
          ),
          BottomNavigationBarItem(
            icon: NavIcon(
              iconData: Icons.shopping_bag_outlined,
              isSelected: _selectedIndex == 2,
            ),
            label: AppStrings.navCart,
          ),
          BottomNavigationBarItem(
            icon: NavIcon(
              iconData: Icons.settings_outlined,
              isSelected: _selectedIndex == 3,
            ),
            label: AppStrings.navSettings,
          ),
        ],
      ),
    );
  }
}