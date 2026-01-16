import 'package:flutter/material.dart';

abstract class LanguageState {}

class LanguageInitial extends LanguageState {}

class LanguageChanged extends LanguageState {
  final Locale locale;
  final bool isArabic;

  LanguageChanged({required this.locale, required this.isArabic});
}
