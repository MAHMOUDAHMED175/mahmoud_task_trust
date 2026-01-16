import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/repositories/product_details_repository.dart';

@lazySingleton
class GetProductDetails implements UseCase<ProductEntity, GetProductDetailsParams> {
  final ProductDetailsRepository repository;

  GetProductDetails(this.repository);

  @override
  Future<Either<Failure, ProductEntity>> call(GetProductDetailsParams params) async {
    return await repository.getProductDetails(params.productId);
  }
}

class GetProductDetailsParams extends Equatable {
  final int productId;

  const GetProductDetailsParams({required this.productId});

  @override
  List<Object> get props => [productId];
}
