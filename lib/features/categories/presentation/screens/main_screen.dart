import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/language/language_cubit.dart';
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
    CategoriesProductsScreen(),
    // CategoriesScreen(),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Stack(clipBehavior: Clip.none, children: [
            FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFF4A2C1A),
              onPressed: () async {
                final languageCubit = context.read<LanguageCubit>();
                await languageCubit.toggleLanguage();
              },
              child: const Icon(Icons.shopify_sharp,
                  size: 30, color: Colors.white),
            ),
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '1',
                  style: TextStyle(color: Colors.black, fontSize: 8),
                ),
              ),
            )
          ]),
        ),
      ),
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
