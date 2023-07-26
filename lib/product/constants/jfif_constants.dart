class JFIFConstants {
  JFIFConstants._init();
  static JFIFConstants? _instace;

  static JFIFConstants get instance => _instace ??= JFIFConstants._init();

  String toJFIF(String name) => 'assets/jfif/$name.jfif';

  String get profile => toJFIF('profile');
  String get workout => toJFIF('workout');
  String get workout2 => toJFIF('workout_2');
  String get workout3 => toJFIF('workout_3');
}
