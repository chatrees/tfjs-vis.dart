@JS('tfvis')
library visor;

import "package:js/js.dart";

@JS()
@anonymous
class SurfaceOptions {
  String name;
  String tab;
}

@JS()
@anonymous
class Visor {
  external dynamic surface(SurfaceOptions options);
}

@JS("visor")
external Visor visor();
