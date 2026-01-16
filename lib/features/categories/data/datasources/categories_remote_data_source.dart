import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/api/api_client.dart';
import 'package:mahmoud_task_trust/core/api/api_constants.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/features/categories/data/models/category_model.dart';

abstract class CategoriesRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
}

@LazySingleton(as: CategoriesRemoteDataSource)
class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  final ApiClient apiClient;

  CategoriesRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await apiClient.dio.get(ApiConstants.categoriesEndpoint);
      if (response.statusCode == 200) {
        final List data = response.data;
        return data.map((json) => CategoryModel.fromJson(json)).toList();
      } else {
        throw ServerException('Failed to load categories');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }
}
