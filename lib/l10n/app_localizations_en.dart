// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Food App';

  @override
  String get pleaseWait => 'Please wait...';

  @override
  String error(Object message) {
    return 'Error: $message';
  }

  @override
  String get productDetails => 'Product Details';

  @override
  String get addons => 'Add-ons';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get cartEmpty => 'Your cart is empty.';

  @override
  String get cartUpdated => 'Cart updated!';

  @override
  String cartError(Object message) {
    return 'Cart error: $message';
  }

  @override
  String get checkout => 'Checkout';

  @override
  String total(Object totalPrice) {
    return 'Total: $totalPrice';
  }

  @override
  String get itemAddedToCart => 'Item added to cart!';

  @override
  String failedToAddItemToCart(Object message) {
    return 'Failed to add to cart: $message';
  }
}
