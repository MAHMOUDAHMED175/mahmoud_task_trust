import 'package:dartz/dartz.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/features/categories/data/models/category_model.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<CategoryEntity>>> getCategories();
}
