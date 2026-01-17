import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class CategoriesProductsScreen extends StatelessWidget {
  const CategoriesProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..fetchCategories(),
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => Scaffold(
              body:
                  Center(child: Text(AppLocalizations.of(context)!.pleaseWait)),
            ),
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
            loaded: (categories, selectedIndexofloaded) {
              final cubit = BlocProvider.of<CategoriesCubit>(context);

              return Directionality(
                textDirection:
                    Localizations.localeOf(context).languageCode == 'en'
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                child: Scaffold(
                  backgroundColor: const Color(0xFFFFF3E8),
                  body: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45,
                            child: ListView.separated(
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: categories.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 8),
                              itemBuilder: (context, index) {
                                final category = categories[index];
                                final isActive = selectedIndexofloaded == index;

                                return InkWell(
                                  onTap: () {
                                    context
                                        .read<CategoriesCubit>()
                                        .changeIndex(index);
                                  },
                                  child: _Chip(
                                    title: category.name,
                                    image: category.image,
                                    active: isActive,
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            categories[selectedIndexofloaded].name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          // قائمة المنتجات تحت
                          Expanded(
                            child: ListView.separated(
                              itemCount: categories[selectedIndexofloaded]
                                  .products
                                  .length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (context, index) {
                                final product =
                                    categories[selectedIndexofloaded]
                                        .products[index];
                                return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailsScreen(
                                                  productId: product.id),
                                        ),
                                      );
                                    },
                                    child: _ProductItem(product: product));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            error: (message) => Scaffold(
              body: Center(
                  child: Text(AppLocalizations.of(context)!.error(message))),
            ),
          );
        },
      ),
    );
  }
}

Widget buildNetworkImage(String imageUrl) {
  return Container(
    color: Colors.grey[200],
    child: ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(child: CircularProgressIndicator());
        },
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: Icon(Icons.food_bank, size: 30, color: Colors.red[300]),
          );
        },
      ),
    ),
  );
}

class _Chip extends StatelessWidget {
  final String title;
  final String image;
  final bool active;

  const _Chip({required this.title, this.active = false, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: active ? Colors.red : const Color(0xFFFFD6D6),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(color: active ? Colors.white : Colors.red),
          ),
          const SizedBox(width: 4),
          SizedBox(
            height: 25,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.food_bank, size: 25, color: Colors.white);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  final ProductEntity product;
  const _ProductItem({required this.product});

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
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(product.name,
                  style: const TextStyle(fontWeight: FontWeight.normal)),
              const SizedBox(height: 16),
              Text('ج.م ${product.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
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
          child: buildNetworkImage(product.image),
        ),
      ],
    );
  }
}
