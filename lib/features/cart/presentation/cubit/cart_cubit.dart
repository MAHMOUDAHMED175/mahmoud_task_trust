import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/storage/guest_id_service.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mahmoud_task_trust/features/cart/domain/usecases/add_to_cart.dart';
import 'package:mahmoud_task_trust/features/cart/domain/usecases/delete_from_cart.dart';
import 'package:mahmoud_task_trust/features/cart/domain/usecases/get_cart.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  final GetCart getCartUseCase;
  final AddToCart addToCartUseCase;
  final DeleteFromCart deleteFromCartUseCase;
  final GuestIdService guestIdService;

  CartCubit({
    required this.getCartUseCase,
    required this.addToCartUseCase,
    required this.deleteFromCartUseCase,
    required this.guestIdService,
  }) : super(const CartState.initial());

  Future<void> fetchCart() async {
    emit(const CartState.loading());
    final guestId = guestIdService.getGuestId();
    if (guestId == null) {
      emit(const CartState.error(message: 'Guest ID not found'));
      return;
    }

    final failureOrCart = await getCartUseCase(GetCartParams(guestId: guestId));
    failureOrCart.fold(
      (failure) => emit(CartState.error(message: failure.toString())),
      (cart) => emit(CartState.loaded(cart: cart)),
    );
  }

  Future<void> addItemToCart({
    required int productId,
    required int quantity,
    required List<AddonEntity> addons,
  }) async {
    final guestId = guestIdService.getGuestId();
    if (guestId == null) {
      emit(const CartState.error(message: 'Guest ID not found'));
      return;
    }

    // Optionally emit loading state here, but be careful not to hide current cart UI instantly
    // emit(const CartState.loading());

    final failureOrCart = await addToCartUseCase(AddToCartParams(
      guestId: guestId,
      cartItem: CartItemEntity(
          productId: productId, quantity: quantity, addons: addons),
    ));
    failureOrCart.fold(
      (failure) => emit(CartState.error(message: failure.toString())),
      (cart) => emit(CartState.loaded(cart: cart)),
    );
  }

  Future<void> removeItemFromCart({
    required int productId,
    required int quantity,
  }) async {
    final guestId = guestIdService.getGuestId();
    if (guestId == null) {
      emit(const CartState.error(message: 'Guest ID not found'));
      return;
    }

    final failureOrCart = await deleteFromCartUseCase(DeleteFromCartParams(
      guestId: guestId,
      productId: productId,
      quantity: quantity,
    ));
    failureOrCart.fold(
      (failure) => emit(CartState.error(message: failure.toString())),
      (cart) => emit(CartState.loaded(cart: cart)),
    );
  }
}
