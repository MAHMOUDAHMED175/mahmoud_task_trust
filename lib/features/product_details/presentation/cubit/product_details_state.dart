part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.loaded({
    required ProductEntity product,
    required List<AddonEntity> addons,
  }) = _Loaded;
  const factory ProductDetailsState.error({required String message}) = _Error;
}
