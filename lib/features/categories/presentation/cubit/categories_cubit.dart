import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/categories/data/models/category_model.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';
import 'package:mahmoud_task_trust/features/categories/domain/usecases/get_categories.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

// @injectable
// class CategoriesCubit extends Cubit<CategoriesState> {
//   final GetCategories getCategories;
//   int? indexNumProud;

//   CategoriesCubit({required this.getCategories})
//       : super(const CategoriesState.initial());

//   Future<void> fetchCategories() async {
//     emit(const CategoriesState.loading());
//     final failureOrCategories = await getCategories(NoParams());
//     failureOrCategories.fold(
//       (failure) => emit(CategoriesState.error(message: failure.toString())),
//       (categories) => emit(CategoriesState.loaded(categories: categories)),
//     );
//   }

//   void changeIndex(int index) {
//     indexNumProud = index;
//     emit(CategoriesState.changeindex());
//   }
// }

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategories getCategories;

  CategoriesCubit({required this.getCategories})
      : super(const CategoriesState.initial());

  Future<void> fetchCategories() async {
    emit(const CategoriesState.loading());
    final failureOrCategories = await getCategories(NoParams());
    failureOrCategories.fold(
      (failure) => emit(CategoriesState.error(message: failure.toString())),
      (categories) {
        emit(CategoriesState.loaded(categories: categories));
      },
    );
  }

  void changeIndex(int index) {
    if (state is _Loaded) {
      final loadedState = state as _Loaded;
      emit(loadedState.copyWith(selectedIndex: index));
    }
  }
}
