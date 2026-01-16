import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mahmoud_task_trust/core/di/injection.config.dart';

// import 'cubit_module.dart';
// import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();
