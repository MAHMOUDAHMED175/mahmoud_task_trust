import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class AddToCart implements UseCase<CartEntity, AddToCartParams> {
  final CartRepository repository;

  AddToCart(this.repository);

  @override
  Future<Either<Failure, CartEntity>> call(AddToCartParams params) async {
    return await repository.addToCart(
      guestId: params.guestId,
      cartItem: params.cartItem,
    );
  }
}

class AddToCartParams extends Equatable {
  final String guestId;
  final CartItemEntity cartItem;

  const AddToCartParams({
    required this.guestId,
    required this.cartItem,
  });

  @override
  List<Object> get props => [guestId, cartItem];
}
