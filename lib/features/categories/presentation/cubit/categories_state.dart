part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.loaded(
      {required List<CategoryEntity> categories}) = _Loaded;
  const factory CategoriesState.error({required String message}) = _Error;
}
