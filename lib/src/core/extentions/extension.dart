extension DurationConverter on Duration {
  String toMinSec() {
    int seconds = inSeconds.toInt() % 60;
    int minutes = inMinutes.toInt();
    final sec = seconds.toString().padLeft(2, "0");
    final min = minutes.toString().padLeft(2, "0");
    return "$min:$sec";
  }
}
