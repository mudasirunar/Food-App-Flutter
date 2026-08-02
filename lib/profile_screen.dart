import 'package:flutter/material.dart';
import 'package:project_app/home_screen.dart';
import 'package:project_app/checkout_screen.dart';
import 'package:project_app/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 1;

  final List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const CheckoutScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        centerTitle: false,
        title: Text(
          'Profile',
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
                'Mudasir Ali',
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
                    'Karachi, Pakistan',
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              const Text(
                'Gold Member 🏆',
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
                          'Orders',
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
                          'Vouchers',
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
                          'Saved Food',
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
                      'My Orders',
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
                          'Address',
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
                          'Payment',
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => screens[index]),
            );
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.home_rounded, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.person_outline_rounded, 1),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.shopping_bag_outlined, 2),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.settings_outlined, 3),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData iconData, int index) {
    bool isSelected = _selectedIndex == index;
    if (isSelected) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 92, 39, 176),
          shape: BoxShape.circle,
        ),
        child: Icon(iconData, color: Colors.white, size: 24),
      );
    } else {
      return Icon(iconData, color: Colors.grey, size: 24);
    }
  }
}
