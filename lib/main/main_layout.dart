import 'package:flutter/material.dart';
/*import 'home_screen.dart';
import 'missions_screen.dart';
import 'vulnbot_screen.dart';
import 'library_screen.dart';
import 'shop_screen.dart'; */
class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  /*final List<Widget> _pages = [
  const HomeScreen(),      // Your existing Home screen
  const MissionsScreen(),  // Your existing Missions screen
  const VulnBotScreen(),   // Your existing VulnBot screen
  const LibraryScreen(),   // Your existing Library screen
  const ShopScreen(),      // Your existing Shop screen
];
*/
  // For now, just placeholders to avoid errors
  final List<Widget> _pages = [
    Container(), // Home screen will go here
    Container(), // Missions screen will go here
    Container(), // VulnBot screen will go here
    Container(), // Library screen will go here
    Container(), // Shop screen will go here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ========== APPBAR ==========
      appBar: AppBar(
        title: Row(
          children: [
            // Logo on the left
            Image.asset(
              'assets/icons/EthixLabs_LOGO.png',
              height: 120,
              width: 120,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.apps, size: 40);
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
        actions: [
          // Search icon
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          // Notification icon with badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  // TODO: Implement notifications
                },
              ),
            ],
          ),
          // Profile icon
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // TODO: Implement profile
            },
          ),
        ],
        backgroundColor: Color(0xFF2F1121),
        elevation: 2,
        foregroundColor: Colors.white,
      ),

      // ========== BODY WITH BACKGROUND IMAGE ==========
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3_noLogo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Page Content (transparent to show background)
          _pages[_selectedIndex],
        ],
      ),

      // ========== BOTTOM NAVIGATION BAR ==========
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFFE68C8C),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: const Color(0xFF1E1E2A),
        elevation: 8,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Missions',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/VulnbotAI_LOGO.png',
              width: 54,
              height: 54,
            ),
            label: 'VulnBot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
  Widget buildAppBarIcon(IconData icon, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(icon, size: 60, color: Colors.white),
      splashRadius: 24,
      onPressed: onPressed,
    );
  }
}