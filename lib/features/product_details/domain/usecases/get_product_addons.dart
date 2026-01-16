import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/repositories/product_details_repository.dart';

@lazySingleton
class GetProductAddons implements UseCase<List<AddonEntity>, GetProductAddonsParams> {
  final ProductDetailsRepository repository;

  GetProductAddons(this.repository);

  @override
  Future<Either<Failure, List<AddonEntity>>> call(GetProductAddonsParams params) async {
    return await repository.getProductAddons(params.productId);
  }
}

class GetProductAddonsParams extends Equatable {
  final int productId;

  const GetProductAddonsParams({required this.productId});

  @override
  List<Object> get props => [productId];
}
