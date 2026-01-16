import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/preferences/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class GuestIdService {
  final SharedPreferences _prefs;
  static const _guestIdKey = 'guest_id';

  GuestIdService(this._prefs);

  Future<void> saveGuestId(String guestId) async {
    await _prefs.setString(_guestIdKey, guestId);
  }

  String? getGuestId() {
    return _prefs.getString(_guestIdKey);
  }

  Future<void> clearGuestId() async {
    await _prefs.remove(_guestIdKey);
  }
}

@Singleton(as: AppPreferences)
class AppPreferencesImpl implements AppPreferences {
  final SharedPreferences _prefs;

  AppPreferencesImpl(this._prefs);

  @override
  Future<bool> isArabic() async {
    return _prefs.getString('lang') == 'ar';
  }

  @override
  Future<void> setLanguage(bool isArabic) async {
    await _prefs.setString('lang', isArabic ? 'ar' : 'en');
  }

  @override
  Future<String> getLanguageCode() async {
    return _prefs.getString('lang') ?? 'en';
  }
}

@module
abstract class StorageModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
