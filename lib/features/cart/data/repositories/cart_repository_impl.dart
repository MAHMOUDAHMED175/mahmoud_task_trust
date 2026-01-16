import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/error/exceptions.dart';
import 'package:mahmoud_task_trust/core/error/failures.dart';
import 'package:mahmoud_task_trust/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:mahmoud_task_trust/features/cart/data/models/cart_item_model.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/repositories/cart_repository.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;

  CartRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, CartEntity>> getCart(String guestId) async {
    try {
      final remoteCart = await remoteDataSource.getCart(guestId);
      return Right(remoteCart);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> addToCart({
    required String guestId,
    required CartItemEntity cartItem,
  }) async {
    try {
      final remoteCart = await remoteDataSource.addToCart(
        guestId: guestId,
        cartItem: cartItem as CartItemModel, // Cast to model for JSON conversion
      );
      return Right(remoteCart);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> deleteFromCart({
    required String guestId,
    required int productId,
    required int quantity,
  }) async {
    try {
      final remoteCart = await remoteDataSource.deleteFromCart(
        guestId: guestId,
        productId: productId,
        quantity: quantity,
      );
      return Right(remoteCart);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
