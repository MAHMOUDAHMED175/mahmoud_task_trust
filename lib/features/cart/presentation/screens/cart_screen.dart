import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _couponController = TextEditingController();
  double _discountPercentage = 0;

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartCubit>()..fetchCart(),
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
          ],
        ),
        body: BlocListener<CartCubit, CartState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (cart) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(AppLocalizations.of(context)!.cartUpdated)),
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          AppLocalizations.of(context)!.cartError(message))),
                );
              },
            );
          },
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              return state.when(
                initial: () => Center(
                    child: Text(AppLocalizations.of(context)!.pleaseWait)),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (cart) {
                  if (cart.items.isEmpty) {
                    return Center(
                        child: Text(AppLocalizations.of(context)!.cartEmpty));
                  }

                  // Calculate totals
                  double subtotal = double.tryParse(cart.total) ?? 0.0;
                  double tax = subtotal * 0.15; // 15% tax
                  double discount = subtotal * _discountPercentage;
                  double total = subtotal + tax - discount;

                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: cart.items.length,
                          itemBuilder: (context, index) {
                            final item = cart.items[index];
                            return Card(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child:
                                          const Icon(Icons.fastfood, size: 40),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Product ID: ${item.productId}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('الكمية: ${item.quantity}'),
                                          if (item.addons.isNotEmpty)
                                            Text(
                                              'الإضافات: ${item.addons.map((e) => e.name).join(', ')}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.remove_circle_outline),
                                          onPressed: () {
                                            context
                                                .read<CartCubit>()
                                                .removeItemFromCart(
                                                  productId: item.productId,
                                                  quantity: 1,
                                                );
                                          },
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.delete,
                                              color: Colors.red),
                                          onPressed: () {
                                            context
                                                .read<CartCubit>()
                                                .removeItemFromCart(
                                                  productId: item.productId,
                                                  quantity: item.quantity,
                                                );
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            // Coupon Code Section
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: _couponController,
                                    decoration: InputDecoration(
                                      hintText: 'أدخل الكوبون',
                                      prefixIcon:
                                          const Icon(Icons.card_giftcard),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 12),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _discountPercentage = value
                                                    .toLowerCase() ==
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
                                      _discountPercentage = _couponController
                                                  .text
                                                  .toLowerCase() ==
                                              'special'
                                          ? 0.2
                                          : 0;
                                    });
                                    if (_discountPercentage > 0) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
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
                            const SizedBox(height: 16),

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
                                    'المجموع الفرعي',
                                    '\$${subtotal.toStringAsFixed(2)}',
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
                            const SizedBox(height: 16),

                            // Checkout Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('جاري معالجة الدفع...'),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.checkout,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                error: (message) => Center(
                    child: Text(AppLocalizations.of(context)!.error(message))),
              );
            },
          ),
        ),
      ),
    );
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
}
