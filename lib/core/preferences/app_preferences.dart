abstract class AppPreferences {
  Future<bool> isArabic();
  Future<void> setLanguage(bool isArabic);
  Future<String> getLanguageCode();
  // Add other preference methods as needed
}
