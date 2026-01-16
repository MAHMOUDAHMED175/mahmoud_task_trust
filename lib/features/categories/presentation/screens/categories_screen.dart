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
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appName),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  Localizations.localeOf(context).languageCode.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.language),
              onPressed: () async {
                final languageCubit = context.read<LanguageCubit>();
                await languageCubit.toggleLanguage();
              },
              tooltip: 'Toggle Language',
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartScreen()),
                );
              },
            ),
          ],
        ),
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
