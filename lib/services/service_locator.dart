import 'package:flutter_minimal_timer/pages/timer_page/timer_page_logic.dart';
import 'package:flutter_minimal_timer/services/storage_service/shared_preferences_storage.dart';
import 'package:flutter_minimal_timer/services/storage_service/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<TimerPageManager>(() => TimerPageManager());
  getIt.registerLazySingleton<StorageService>(() => SharedPreferencesStorage());
}
