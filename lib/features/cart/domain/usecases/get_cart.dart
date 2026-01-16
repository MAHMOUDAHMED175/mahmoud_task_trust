import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class GetCart implements UseCase<CartEntity, GetCartParams> {
  final CartRepository repository;

  GetCart(this.repository);

  @override
  Future<Either<Failure, CartEntity>> call(GetCartParams params) async {
    return await repository.getCart(params.guestId);
  }
}

class GetCartParams extends Equatable {
  final String guestId;

  const GetCartParams({required this.guestId});

  @override
  List<Object> get props => [guestId];
}
