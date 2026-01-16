import 'package:dartz/dartz.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

abstract class ProductDetailsRepository {
  Future<Either<Failure, ProductEntity>> getProductDetails(int productId);
  Future<Either<Failure, List<AddonEntity>>> getProductAddons(int productId);
}
