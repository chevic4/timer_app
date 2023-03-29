import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pomidoro_timer/src/data/repository/alarms_list_repository_impl.dart';
import 'package:flutter_pomidoro_timer/src/domain/services/alarms_list_service.dart';
import '../../data/datasources/alarm_list_storage/alarms_list_storage_sharedpref.dart';
import '../../data/datasources/alarms_list_storage_interface.dart';
import '../../domain/repository/alarms_list_repository.dart';
import '../../domain/services/time_controller_service.dart';
import '../../presentation/screens/main_screen.dart';
import '../../presentation/screens/settings_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<AlarmsListStorage>(
            (i) => AlarmsListStorageSharedPrefences()),
        Bind.factory<AlarmsListRepository>(
            (i) => AlarmsListRepositoryImpl(i())),
        Bind.factory<AlarmListService>((i) => AlarmListService(store: i())),
        Bind.factory<TimeControllerService>((i) => TimeControllerService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const MainScreen()),
        ChildRoute('/settings',
            transition: TransitionType.leftToRight,
            child: (context, args) => const SettingScreen()),
      ];
}
