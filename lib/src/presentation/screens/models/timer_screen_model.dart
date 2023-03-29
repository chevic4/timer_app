import 'package:flutter_modular/flutter_modular.dart';
import '../../../domain/services/time_controller_service.dart';

class TimeScreenModel {
  final _controller = Modular.get<TimeControllerService>();

  void timeRestart() {
    _controller.timeControllerRestart();
  }

  void timeStart() {
    _controller.timeControllerStart();
  }

  void timeResume() {
    _controller.timeControllerResume();
  }

  void timePause() {
    _controller.timeControllerPause();
  }
}
