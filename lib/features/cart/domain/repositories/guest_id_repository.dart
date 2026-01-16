import 'package:dartz/dartz.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';

abstract class GuestIdRepository {
  Future<Either<Failure, String>> getGuestId();
}
