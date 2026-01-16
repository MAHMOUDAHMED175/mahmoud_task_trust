import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/usecases/get_product_addons.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/usecases/get_product_details.dart';

part 'product_details_state.dart';
part 'product_details_cubit.freezed.dart';

@injectable
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final GetProductDetails getProductDetails;
  final GetProductAddons getProductAddons;

  ProductDetailsCubit({
    required this.getProductDetails,
    required this.getProductAddons,
  }) : super(const ProductDetailsState.initial());

  Future<void> fetchProductDetails(int productId) async {
    emit(const ProductDetailsState.loading());

    final productResult = await getProductDetails(GetProductDetailsParams(productId: productId));
    final addonsResult = await getProductAddons(GetProductAddonsParams(productId: productId));

    productResult.fold(
      (failure) => emit(ProductDetailsState.error(message: failure.toString())),
      (product) {
        addonsResult.fold(
          (failure) => emit(ProductDetailsState.error(message: failure.toString())),
          (addons) => emit(ProductDetailsState.loaded(product: product, addons: addons)),
        );
      },
    );
  }
}
