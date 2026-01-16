import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/api/api_client.dart';
import 'package:mahmoud_task_trust/core/api/api_constants.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';

abstract class GuestIdRemoteDataSource {
  Future<String> getGuestId();
}

@LazySingleton(as: GuestIdRemoteDataSource)
class GuestIdRemoteDataSourceImpl implements GuestIdRemoteDataSource {
  final ApiClient apiClient;

  GuestIdRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<String> getGuestId() async {
    try {
      final response = await apiClient.dio.get(ApiConstants.guestIdEndpoint);
      if (response.statusCode == 200 && response.data['guest_id'] != null) {
        return response.data['guest_id'];
      } else {
        throw ServerException('Failed to get guest ID');
      }
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Unknown error');
    }
  }
}
