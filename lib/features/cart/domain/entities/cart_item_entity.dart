import 'package:equatable/equatable.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';

class CartItemEntity extends Equatable {
  final int productId;
  final int quantity;
  final List<AddonEntity> addons;

  const CartItemEntity({
    required this.productId,
    required this.quantity,
    required this.addons,
  });

  @override
  List<Object?> get props => [productId, quantity, addons];
}
