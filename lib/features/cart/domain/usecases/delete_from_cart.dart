import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class DeleteFromCart implements UseCase<CartEntity, DeleteFromCartParams> {
  final CartRepository repository;

  DeleteFromCart(this.repository);

  @override
  Future<Either<Failure, CartEntity>> call(DeleteFromCartParams params) async {
    return await repository.deleteFromCart(
      guestId: params.guestId,
      productId: params.productId,
      quantity: params.quantity,
    );
  }
}

class DeleteFromCartParams extends Equatable {
  final String guestId;
  final int productId;
  final int quantity;

  const DeleteFromCartParams({
    required this.guestId,
    required this.productId,
    required this.quantity,
  });

  @override
  List<Object> get props => [guestId, productId, quantity];
}
