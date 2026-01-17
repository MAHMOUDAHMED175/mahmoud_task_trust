import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/api/api_client.dart';
import 'package:mahmoud_task_trust/core/api/api_constants.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/features/product_details/data/models/addon_model.dart';
import 'package:mahmoud_task_trust/features/product_details/data/models/product_model.dart';

abstract class ProductDetailsRemoteDataSource {
  Future<ProductDetailsModel> getProductDetails(int productId);
  Future<List<AddonModel>> getProductAddons(int productId);
}

@LazySingleton(as: ProductDetailsRemoteDataSource)
class ProductDetailsRemoteDataSourceImpl
    implements ProductDetailsRemoteDataSource {
  final ApiClient apiClient;

  ProductDetailsRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<ProductDetailsModel> getProductDetails(int productId) async {
    try {
      final response = await apiClient.dio.get(
        ApiConstants.productsEndpoint,
        queryParameters: {'product_id': productId},
      );

      if (response.statusCode == 200) {
        final data = response.data;

        // لو الداتا جاية كـ List أو Map
        if (data is List && data.isNotEmpty) {
          return ProductDetailsModel.fromJson(data.first);
        } else if (data is Map<String, dynamic> && data.isNotEmpty) {
          return ProductDetailsModel.fromJson(data);
        } else {
          throw ServerException('Product not found');
        }
      } else {
        throw ServerException('Failed to load product details');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }

  @override
  Future<List<AddonModel>> getProductAddons(int productId) async {
    try {
      final response = await apiClient.dio.get(
        ApiConstants.addonsEndpoint,
        queryParameters: {'product_id2': productId},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final List<AddonModel> addons = [];

        if (data is Map<String, dynamic>) {
          data.forEach((key, value) {
            if (value is Map<String, dynamic>) {
              final optionsList = value['options'] as List<dynamic>? ?? [];
              addons.add(
                AddonModel(
                  id: value['id'] ?? 0,
                  title: value['title'] ?? '',
                  titleAr: value['title_ar'] ?? '',
                  required: value['required'] ?? false,
                  isMultiChoice: value['IsMultiChoise'] ?? false,
                  minMaxRules: MinMaxRulesModel.fromJson(
                      value['min_max_rules'] ??
                          {'min': 0, 'max': 0, 'exact': 0}),
                  options: optionsList
                      .map((option) => AddonOptionModel.fromJson(option))
                      .toList(),
                ),
              );
            }
          });
        }

        return addons;
      } else {
        throw ServerException('Failed to load product addons');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }
}
