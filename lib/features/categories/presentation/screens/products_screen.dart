import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/features/cart/presentation/screens/cart_screen.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:mahmoud_task_trust/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..fetchCategories(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appName),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // TODO: Implement search functionality
              },
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
            return state.maybeWhen(
              orElse: () {
                return const Center(child: CircularProgressIndicator());
              },
              initial: () =>
                  Center(child: Text(AppLocalizations.of(context)!.pleaseWait)),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (categories, index) {
                final isArabic =
                    Localizations.localeOf(context).languageCode == 'ar';
                return ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final categoryName =
                        isArabic ? category.name : category.name;
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: category.image,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        title: Text(categoryName),
                        trailing:
                            const Icon(Icons.add_circle, color: Colors.red),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(
                                productId: category.id,
                              ),
                            ),
                          );
                        },
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
