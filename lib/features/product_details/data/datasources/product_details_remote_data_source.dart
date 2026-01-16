import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/api/api_client.dart';
import 'package:mahmoud_task_trust/core/api/api_constants.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/features/product_details/data/models/addon_model.dart';
import 'package:mahmoud_task_trust/features/product_details/data/models/product_model.dart';

abstract class ProductDetailsRemoteDataSource {
  Future<ProductModel> getProductDetails(int productId);
  Future<List<AddonModel>> getProductAddons(int productId);
}

@LazySingleton(as: ProductDetailsRemoteDataSource)
class ProductDetailsRemoteDataSourceImpl
    implements ProductDetailsRemoteDataSource {
  final ApiClient apiClient;

  ProductDetailsRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<ProductModel> getProductDetails(int productId) async {
    try {
      final response = await apiClient.dio.get(
        ApiConstants.productsEndpoint,
        queryParameters: {'product_id': productId},
      );
      if (response.statusCode == 200) {
        // The API returns a list with a single product
        final Map<String, dynamic> data = response.data;
        if (data.isNotEmpty) {
          return ProductModel.fromJson(data);
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
        // The API returns a map where each key is an addon category
        final Map<String, dynamic> data = response.data;
        final List<AddonModel> addons = [];
        data.forEach((key, value) {
          if (value is Map<String, dynamic> && value.containsKey('options')) {
            final List<dynamic> options = value['options'];
            for (var option in options) {
              addons.add(AddonModel.fromJson(option));
            }
          }
        });
        return addons;
      } else {
        throw ServerException('Failed to load product addons');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }
}
