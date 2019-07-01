@JS('tfvis')
library visor;

import "package:js/js.dart";

@JS()
@anonymous
class Container {
  String name;
}

@JS()
@anonymous
class Surface extends Container {
  String tab;
}

@JS()
@anonymous
class Visor {
  external dynamic surface(Surface surface);
}

@JS("visor")
external Visor visor();
