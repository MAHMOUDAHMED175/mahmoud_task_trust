import 'package:dartz/dartz.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/categories/data/models/category_model.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';
import 'package:mahmoud_task_trust/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCategories implements UseCase<List<CategoryEntity>, NoParams> {
  final CategoriesRepository repository;

  GetCategories(this.repository);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}
