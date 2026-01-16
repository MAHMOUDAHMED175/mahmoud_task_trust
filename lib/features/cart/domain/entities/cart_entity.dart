import 'package:equatable/equatable.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity extends Equatable {
  final List<CartItemEntity> items;
  final String total;

  const CartEntity({
    required this.items,
    required this.total,
  });

  @override
  List<Object?> get props => [items, total];
}
