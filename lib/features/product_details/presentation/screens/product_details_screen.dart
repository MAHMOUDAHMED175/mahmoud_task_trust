import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:mahmoud_task_trust/features/cart/presentation/screens/cart_screen.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;
  final Set<AddonEntity> selectedAddons = {};
  final TextEditingController _couponController = TextEditingController();
  double _discountPercentage = 0;

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  Widget _buildSummaryRow(
    BuildContext context,
    String label,
    String value, {
    bool isBold = false,
    Color? textColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  color: textColor,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProductDetailsCubit>()
            ..fetchProductDetails(widget.productId),
        ),
        BlocProvider(
          create: (context) => getIt<CartCubit>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.productDetails),
          actions: [
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
        body: BlocListener<CartCubit, CartState>(
          listener: (context, cartState) {
            cartState.whenOrNull(
              loaded: (cart) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content:
                          Text(AppLocalizations.of(context)!.itemAddedToCart)),
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(AppLocalizations.of(context)!
                          .failedToAddItemToCart(message))),
                );
              },
            );
          },
          child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) {
              return state.when(
                initial: () => Center(
                    child: Text(AppLocalizations.of(context)!.pleaseWait)),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message) => Center(
                    child: Text(AppLocalizations.of(context)!.error(message))),
                loaded: (product, addons) {
                  // Calculate totals
                  double productPrice =
                      double.tryParse(product.price.toString()) ?? 0.0;
                  double addonPrice = selectedAddons.fold(
                      0.0,
                      (sum, addon) =>
                          sum + (double.tryParse(addon.price) ?? 0.0));
                  double subtotal = (productPrice + addonPrice) * quantity;
                  double tax = subtotal * 0.15; // 15% tax
                  double discount = subtotal * _discountPercentage;
                  double total = subtotal + tax - discount;

                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: CachedNetworkImage(
                            imageUrl: product.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 250,
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Product Name and Price
                        Text(product.name,
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: 8),
                        Text('\$${productPrice.toStringAsFixed(2)}',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color: Theme.of(context).primaryColor)),
                        const SizedBox(height: 16),

                        // Product Description
                        Text(product.description,
                            style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: 24),

                        // Addons
                        if (addons.isNotEmpty) ...[
                          Text(AppLocalizations.of(context)!.addons,
                              style: Theme.of(context).textTheme.titleMedium),
                          const Divider(),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: addons.length,
                            itemBuilder: (context, index) {
                              final addon = addons[index];
                              return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                    '+\$${(double.tryParse(addon.price) ?? 0.0).toStringAsFixed(2)}'),
                                value: selectedAddons.contains(addon),
                                onChanged: (bool? value) {
                                  setState(() {
                                    if (value == true) {
                                      selectedAddons.add(addon);
                                    } else {
                                      selectedAddons.remove(addon);
                                    }
                                  });
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 24),
                        ],

                        // Coupon Code Section
                        Text('أدخل كود الخصم',
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _couponController,
                                decoration: InputDecoration(
                                  hintText: 'أدخل الكوبون',
                                  prefixIcon: const Icon(Icons.card_giftcard),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _discountPercentage = value.toLowerCase() ==
                                            'special'
                                        ? 0.2 // 20% discount for 'special' coupon
                                        : 0;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _discountPercentage =
                                      _couponController.text.toLowerCase() ==
                                              'special'
                                          ? 0.2
                                          : 0;
                                });
                                if (_discountPercentage > 0) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('تم تطبيق الخصم بنجاح'),
                                    ),
                                  );
                                }
                              },
                              child: const Text('تطبيق'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Order Summary
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              _buildSummaryRow(
                                context,
                                'السعر',
                                '\$${productPrice.toStringAsFixed(2)}',
                              ),
                              if (addonPrice > 0)
                                _buildSummaryRow(
                                  context,
                                  'الإضافات',
                                  '\$${addonPrice.toStringAsFixed(2)}',
                                ),
                              _buildSummaryRow(
                                context,
                                'الكمية',
                                '$quantity',
                              ),
                              Divider(color: Colors.grey[300]),
                              _buildSummaryRow(
                                context,
                                'المجموع الفرعي',
                                '\$${subtotal.toStringAsFixed(2)}',
                                isBold: true,
                              ),
                              _buildSummaryRow(
                                context,
                                'الضريبة (15%)',
                                '\$${tax.toStringAsFixed(2)}',
                                textColor: Colors.orange,
                              ),
                              if (_discountPercentage > 0)
                                _buildSummaryRow(
                                  context,
                                  'الخصم',
                                  '-\$${discount.toStringAsFixed(2)}',
                                  textColor: Colors.green,
                                ),
                              Divider(color: Colors.grey[300]),
                              _buildSummaryRow(
                                context,
                                'المبلغ الإجمالي',
                                '\$${total.toStringAsFixed(2)}',
                                isBold: true,
                                textColor: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Quantity and Add to Cart
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove_circle_outline),
                                  onPressed: () {
                                    if (quantity > 1) {
                                      setState(() => quantity--);
                                    }
                                  },
                                ),
                                Text('$quantity',
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                                IconButton(
                                  icon: const Icon(Icons.add_circle_outline),
                                  onPressed: () {
                                    setState(() => quantity++);
                                  },
                                ),
                              ],
                            ),
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  context.read<CartCubit>().addItemToCart(
                                        productId: product.id,
                                        quantity: quantity,
                                        addons: selectedAddons.toList(),
                                      );
                                },
                                icon: const Icon(Icons.shopping_cart),
                                label: Text(
                                    AppLocalizations.of(context)!.addToCart),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
