class PNGConstants {
  PNGConstants._init();
  static PNGConstants? _instace;

  static PNGConstants get instance => _instace ??= PNGConstants._init();

  String toPNG(String name) => 'assets/png/$name.png';

  String get training => toPNG('training');
  String get workout => toPNG('workout');
  String get workout2 => toPNG('workout_two');
  String get workout3 => toPNG('workout_three');
}
