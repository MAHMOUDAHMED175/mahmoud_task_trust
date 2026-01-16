import 'package:flutter/material.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/screens/account_screen.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/screens/categories_screen.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/screens/offers_screen.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/screens/products_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    CategoriesScreen(),
    ProductsScreen(),
    OffersScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: isArabic ? 'الرئيسية' : 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.menu_book),
            label: isArabic ? 'المنتجات' : 'Products',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.local_offer),
            label: isArabic ? 'العروض' : 'Offers',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: isArabic ? 'الحساب' : 'Account',
          ),
        ],
      ),
    );
  }
}
