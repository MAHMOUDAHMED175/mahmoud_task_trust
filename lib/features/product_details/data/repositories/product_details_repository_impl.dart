import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/preferences/app_preferences.dart';
import 'package:mahmoud_task_trust/features/product_details/data/datasources/product_details_remote_data_source.dart';
import 'package:mahmoud_task_trust/features/product_details/data/models/product_model.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/repositories/product_details_repository.dart';

@LazySingleton(as: ProductDetailsRepository)
class ProductDetailsRepositoryImpl implements ProductDetailsRepository {
  final ProductDetailsRemoteDataSource remoteDataSource;
  final AppPreferences appPreferences;

  ProductDetailsRepositoryImpl(
      {required this.remoteDataSource, required this.appPreferences});

  @override
  Future<Either<Failure, ProductEntity>> getProductDetails(
      int productId) async {
    try {
      final productDetailsModel =
          await remoteDataSource.getProductDetails(productId);
      final isArabic = await appPreferences.isArabic();
      return Right(productDetailsModel.toEntity(isArabic: isArabic));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<AddonEntity>>> getProductAddons(
      int productId) async {
    // try {
    //   final remoteAddons = await remoteDataSource.getProductAddons(productId);
    //   return Right(remoteAddons);
    // } on ServerException catch (e) {
    //   return Left(ServerFailure(e.message));
    // }
    return Right([]);
  }
}
