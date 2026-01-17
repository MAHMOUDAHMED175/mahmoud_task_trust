import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/core/language/language_cubit.dart';
import 'package:mahmoud_task_trust/features/cart/presentation/screens/cart_screen.dart'; // Import CartScreen
import 'package:mahmoud_task_trust/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:mahmoud_task_trust/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  Widget _buildNetworkImage(String imageUrl) {
    return Container(
      color: Colors.grey[200],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: FutureBuilder(
          future: Future.delayed(const Duration(milliseconds: 500)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return Image.network(
              imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                print('Image error for $imageUrl: $error');
                // Fallback to a simple colored container
                return Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.food_bank, size: 50, color: Colors.red[300]),
                        const SizedBox(height: 8),
                        const Text('صورة', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..fetchCategories(),
      child: Scaffold(
        body: BlocBuilder<CategoriesCubit, CategoriesState>(
          builder: (context, state) {
            return state.when(
              initial: () =>
                  Center(child: Text(AppLocalizations.of(context)!.pleaseWait)),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (categories) {
                return GridView.builder(
                  padding: const EdgeInsets.all(16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    // Verify image URL
                    final imageUrl = category.image.isEmpty
                        ? 'https://via.placeholder.com/150'
                        : category.image;
                    print("Category Image URL: $imageUrl");
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ProductDetailsScreen(productId: 3347),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(12.0),
                                ),
                                child: _buildNetworkImage(imageUrl),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                category.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (message) => Center(
                  child: Text(AppLocalizations.of(context)!.error(message))),
            );
          },
        ),
      ),
    );
  }
}

/*  This is a placeholder comment for the code section above. */

class CategoriesProductsScreen extends StatelessWidget {
  const CategoriesProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      //خليك فاكر عشان لما اللغه تتغير تعملها  شمال ويمين
      textDirection: TextDirection
          .values[Localizations.localeOf(context).languageCode == 'ar' ? 1 : 0],
      child: Scaffold(
        backgroundColor: const Color(0xFFFFF3E8), // cream background
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _Chip(title: 'عروض دوشكا برجر', active: true),
                    const SizedBox(width: 8),
                    _Chip(title: 'عروض الابليكيشن'),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'عروض دوشكا برجر',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.separated(
                    itemCount: 6,
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return const _ProductItem();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String title;
  final bool active;

  const _Chip({required this.title, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: active ? Colors.red : const Color(0xFFFFD6D6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(color: active ? Colors.white : Colors.red),
          ),
          SizedBox(
            width: 4,
          ),
          Icon(Icons.coffee),
        ],
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  const _ProductItem();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add, size: 16, color: Colors.white),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('ميجا بايت بوكس',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text('249 ج.م', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.fastfood, size: 40),
        ),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _NavItem(
      {required this.icon, required this.label, this.active = false});

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFF4A2C1A) : Colors.grey;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 12)),
      ],
    );
  }
}
