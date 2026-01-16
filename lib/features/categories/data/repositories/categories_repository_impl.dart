import 'package:dartz/dartz.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/preferences/app_preferences.dart';
import 'package:mahmoud_task_trust/features/categories/data/datasources/categories_remote_data_source.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';
import 'package:mahmoud_task_trust/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource remoteDataSource;
  final AppPreferences appPreferences;

  CategoriesRepositoryImpl(
      {required this.remoteDataSource, required this.appPreferences});

  @override
  Future<Either<Failure, List<CategoryEntity>>> getCategories() async {
    try {
      final remoteCategories = await remoteDataSource.getCategories();
      final isArabic = await appPreferences.isArabic();
      return Right(
          remoteCategories.map((model) => model.toEntity(isArabic)).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
