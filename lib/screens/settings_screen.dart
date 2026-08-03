import 'package:flutter/material.dart';
import 'package:project_app/screens/home_screen.dart';
import 'package:project_app/screens/login_screem.dart';
import 'package:project_app/screens/profile_screen.dart';
import 'package:project_app/screens/checkout_screen.dart';

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

  final List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const CheckoutScreen(),
    const SettingsScreen(),
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        title: const Text(
          'Settings',
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
              'Food Preferences',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
            ),
            const SizedBox(height: 10),
            SwitchListTile(
              activeThumbColor: const Color.fromARGB(255, 92, 39, 176),
              title: const Text('Vegetarian Only'),
              subtitle: const Text('Show only vegetarian food items'),
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
              title: const Text('Spicy Food Option'),
              subtitle: const Text('Include extra spicy food choices'),
              value: _isSpicy,
              onChanged: (val) {
                setState(() {
                  _isSpicy = val;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'App Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
            ),
            const SizedBox(height: 10),
            SwitchListTile(
              activeThumbColor: const Color.fromARGB(255, 92, 39, 176),
              title: const Text('Push Notifications'),
              subtitle: const Text('Get order updates and offer alerts'),
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
              title: const Text('Dark Mode'),
              subtitle: const Text('Enable dark theme interface'),
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
              title: const Text('Saved Addresses'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.payment_outlined,
                color: Color.fromARGB(255, 92, 39, 176),
              ),
              title: const Text('Payment Methods'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  'Logout',
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