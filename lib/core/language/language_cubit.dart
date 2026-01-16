import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_task_trust/core/language/language_state.dart';
import 'package:mahmoud_task_trust/core/preferences/app_preferences.dart';

class LanguageCubit extends Cubit<LanguageState> {
  final AppPreferences appPreferences;

  LanguageCubit({required this.appPreferences}) : super(LanguageInitial());

  Future<void> initializeLanguage() async {
    final isArabic = await appPreferences.isArabic();
    final locale = isArabic ? const Locale('ar', '') : const Locale('en', '');
    emit(LanguageChanged(locale: locale, isArabic: isArabic));
  }

  Future<void> changeLanguage(bool isArabic) async {
    await appPreferences.setLanguage(isArabic);
    final locale = isArabic ? const Locale('ar', '') : const Locale('en', '');
    emit(LanguageChanged(locale: locale, isArabic: isArabic));
  }

  Future<void> toggleLanguage() async {
    final isArabic = await appPreferences.isArabic();
    await changeLanguage(!isArabic);
  }
}
