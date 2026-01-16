import 'package:dartz/dartz.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_item_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, CartEntity>> getCart(String guestId);
  Future<Either<Failure, CartEntity>> addToCart({
    required String guestId,
    required CartItemEntity cartItem,
  });
  Future<Either<Failure, CartEntity>> deleteFromCart({
    required String guestId,
    required int productId,
    required int quantity,
  });
}
