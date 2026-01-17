import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/data/models/addon_model.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required int productId,
    required int quantity,
    required List<AddonModel> addons,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}

extension CartItemModelMapper on CartItemModel {
  CartItemEntity toEntity() {
    return CartItemEntity(
      productId: productId,
      quantity: quantity,
      addons: addons.map((addon) => addon.toEntity()).toList(),
    );
  }
}
