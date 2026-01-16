import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/language/language_cubit.dart';
import 'package:mahmoud_task_trust/core/preferences/app_preferences.dart';

@module
abstract class CubitModule {
  @lazySingleton
  LanguageCubit languageCubit(AppPreferences appPreferences) =>
      LanguageCubit(appPreferences: appPreferences);
}
