class SVGConstants {
  SVGConstants._init();
  static SVGConstants? _instace;

  static SVGConstants get instance => _instace ??= SVGConstants._init();

  String toSVG(String name) => "assets/svg/$name.svg";

  String get training => toSVG("training");
  String get workout => toSVG("workout");
}
