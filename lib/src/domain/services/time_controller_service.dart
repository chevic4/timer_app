import 'package:timer_count_down/timer_controller.dart';

class TimeControllerService {
  final CountdownController _controller = CountdownController(autoStart: true);

  CountdownController get timeControllerGet => _controller;

  void timeControllerRestart() {
    _controller.restart();
  }

  void timeControllerStart() {
    _controller.start();
  }

  void timeControllerResume() {
    _controller.resume();
  }

  void timeControllerPause() {
    _controller.pause();
  }
}
