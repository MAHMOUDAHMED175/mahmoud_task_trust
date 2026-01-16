import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/features/cart/domain/repositories/guest_id_repository.dart';

@lazySingleton
class GetGuestId implements UseCase<String, NoParams> {
  final GuestIdRepository repository;

  GetGuestId(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.getGuestId();
  }
}
