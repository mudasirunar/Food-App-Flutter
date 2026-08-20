import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/app/routes/app_routes.dart';
import 'package:project_app/app/utils/app_strings.dart';
import 'package:project_app/app/widgets/nav_icon.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 1;

  final List<String> routes = [
    AppRoutes.home,
    AppRoutes.profile,
    AppRoutes.checkout,
    AppRoutes.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.offNamed(AppRoutes.home);
          },
        ),
        centerTitle: false,
        title: const Text(
          AppStrings.profileTitle,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                height: 280,
                width: double.infinity,
                color: const Color.fromARGB(255, 92, 39, 176),
              ),

              const SizedBox(height: 70),

              const Text(
                AppStrings.profileName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Color.fromARGB(255, 92, 39, 176),
                  ),
                  SizedBox(width: 4),
                  Text(
                    AppStrings.profileLocation,
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              const Text(
                AppStrings.profileMembership,
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        8,
                        23,
                        230,
                      ).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '15',
                          style: TextStyle(
                            color: Color.fromARGB(255, 90, 13, 213),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppStrings.ordersStat,
                          style: TextStyle(color: Colors.black45, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        8,
                        23,
                        230,
                      ).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '4',
                          style: TextStyle(
                            color: Color.fromARGB(255, 90, 13, 213),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppStrings.vouchersStat,
                          style: TextStyle(color: Colors.black45, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        8,
                        23,
                        230,
                      ).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '8',
                          style: TextStyle(
                            color: Color.fromARGB(255, 90, 13, 213),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppStrings.savedFoodStat,
                          style: TextStyle(color: Colors.black45, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Container(
                height: 45,
                width: 354,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 88, 16, 196),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.receipt_long, size: 16, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      AppStrings.myOrdersButton,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 171,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.location_city,
                          color: Colors.black45,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          AppStrings.addressButton,
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 45,
                    width: 171,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.credit_card,
                          color: Colors.black45,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          AppStrings.paymentButton,
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index != 1) {
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
