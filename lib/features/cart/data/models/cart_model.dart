import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/data/models/cart_item_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel extends CartEntity with _$CartModel {
  const factory CartModel({
    @JsonKey(name: 'cart_items') required List<CartItemModel> items,
    required String total,
  }) = _CartModel;

  const CartModel._() : super(items: const [], total: '');

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
