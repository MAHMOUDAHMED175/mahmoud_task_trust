// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'تطبيق طعام';

  @override
  String get pleaseWait => 'الرجاء الانتظار...';

  @override
  String error(Object message) {
    return 'خطأ: $message';
  }

  @override
  String get productDetails => 'تفاصيل المنتج';

  @override
  String get addons => 'إضافات';

  @override
  String get addToCart => 'أضف إلى السلة';

  @override
  String get cartEmpty => 'سلة التسوق فارغة.';

  @override
  String get cartUpdated => 'تم تحديث السلة!';

  @override
  String cartError(Object message) {
    return 'خطأ في السلة: $message';
  }

  @override
  String get checkout => 'الدفع';

  @override
  String total(Object totalPrice) {
    return 'الإجمالي: $totalPrice';
  }

  @override
  String get itemAddedToCart => 'تمت إضافة العنصر إلى السلة!';

  @override
  String failedToAddItemToCart(Object message) {
    return 'فشل إضافة العنصر إلى السلة: $message';
  }
}
