import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/storage/guest_id_service.dart';
import 'package:mahmoud_task_trust/features/cart/data/datasources/guest_id_remote_data_source.dart';
import 'package:mahmoud_task_trust/features/cart/domain/repositories/guest_id_repository.dart';

@LazySingleton(as: GuestIdRepository)
class GuestIdRepositoryImpl implements GuestIdRepository {
  final GuestIdRemoteDataSource remoteDataSource;
  final GuestIdService guestIdService;

  GuestIdRepositoryImpl({
    required this.remoteDataSource,
    required this.guestIdService,
  });

  @override
  Future<Either<Failure, String>> getGuestId() async {
    final cachedGuestId = guestIdService.getGuestId();
    if (cachedGuestId != null) {
      return Right(cachedGuestId);
    }

    try {
      final remoteGuestId = await remoteDataSource.getGuestId();
      await guestIdService.saveGuestId(remoteGuestId);
      return Right(remoteGuestId);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
