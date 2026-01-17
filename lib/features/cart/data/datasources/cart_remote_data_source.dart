import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/api/api_client.dart';
import 'package:mahmoud_task_trust/core/api/api_constants.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/features/cart/data/models/cart_item_model.dart';
import 'package:mahmoud_task_trust/features/cart/data/models/cart_model.dart';

abstract class CartRemoteDataSource {
  Future<CartModel> getCart(String guestId);
  Future<CartModel> addToCart({
    required String guestId,
    required CartItemModel cartItem,
  });
  Future<CartModel> deleteFromCart({
    required String guestId,
    required int productId,
    required int quantity,
  });
}

@LazySingleton(as: CartRemoteDataSource)
class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final ApiClient apiClient;

  CartRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<CartModel> getCart(String guestId) async {
    try {
      final response = await apiClient.dio.get(
        ApiConstants.cartEndpoint,
        queryParameters: {'guest_id': guestId},
      );
      if (response.statusCode == 200 && response.data != null) {
        return CartModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to get cart');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }

  @override
  Future<CartModel> addToCart({
    required String guestId,
    required CartItemModel cartItem,
  }) async {
    try {
      final response = await apiClient.dio.post(
        ApiConstants.cartEndpoint,
        data: {
          'guest_id': guestId,
          'items': [cartItem],
        },
      );
      if (response.statusCode == 200 && response.data != null) {
        return CartModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to add to cart');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }

  @override
  Future<CartModel> deleteFromCart({
    required String guestId,
    required int productId,
    required int quantity,
  }) async {
    try {
      final response = await apiClient.dio.delete(
        ApiConstants.cartEndpoint,
        data: {
          'guest_id': guestId,
          'product_id': productId,
          'quantity': quantity,
        },
      );
      if (response.statusCode == 200 && response.data != null) {
        return CartModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to delete from cart');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }
}
