import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

/*  This is a placeholder comment for the code section above. */
Widget buildNetworkImage(String imageUrl) {
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
              return Center(
                child: Icon(Icons.food_bank, size: 30, color: Colors.red[300]),
              );
            },
          );
        },
      ),
    ),
  );
}

class CategoriesProductsScreen extends StatelessWidget {
  const CategoriesProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..fetchCategories(),
      child: Scaffold(
        body: BlocBuilder<CategoriesCubit, CategoriesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(child: Icon(Icons.abc_outlined));
              },
              initial: () =>
                  Center(child: Text(AppLocalizations.of(context)!.pleaseWait)),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (categories) {
                return Directionality(
                  //خليك فاكر عشان لما اللغه تتغير تعملها  شمال ويمين
                  textDirection: TextDirection.values[
                      Localizations.localeOf(context).languageCode == 'ar'
                          ? 1
                          : 0],
                  child: Scaffold(
                    backgroundColor:
                        const Color(0xFFFFF3E8), // cream background
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
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          BlocProvider.of<CategoriesCubit>(
                                                  context)
                                              .changeIndex(index);
                                        },
                                        child: _Chip(
                                            title: category.name,
                                            active: true,
                                            image: category.image),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'عروض دوشكا برجر',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 16),
                            Expanded(
                              child: ListView.separated(
                                itemCount: categories[
                                        BlocProvider.of<CategoriesCubit>(
                                                context)
                                            .indexNumProud]
                                    .products
                                    .length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 16),
                                itemBuilder: (context, index) {
                                  final product = categories[
                                          BlocProvider.of<CategoriesCubit>(
                                                  context)
                                              .indexNumProud]
                                      .products[index];

                                  return _ProductItem(product: product);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
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
          SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 25,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                print('Image error for $image: $error');
                // Fallback to a simple colored container
                return Icon(Icons.food_bank, size: 25, color: Colors.white);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ProductDetailsScreen(
//                               productId: category.id,
//                             ),
//                           ),
//                         );
class _ProductItem extends StatelessWidget {
  _ProductItem({required this.product});

  final ProductEntity product;

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
            children: [
              Text(product.name,
                  style: TextStyle(fontWeight: FontWeight.normal)),
              SizedBox(height: 16),
              Text(' ج.م ${product.price}',
                  style: TextStyle(
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
