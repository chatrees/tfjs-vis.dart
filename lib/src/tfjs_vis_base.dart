@JS('tfvis')
library tfjs_vis;

import "package:js/js.dart";

// TODO: Put public facing types in this file.

class ScatterplotContainer {
  String name;
}

class Point2D {
  num x;
  num y;

  Point2D(this.x, this.y);
}

class ScatterplotData {
  List values = new List();
  List<String> series = new List();
}

class BarchartValue {
  num index;
  num value;

  BarchartValue(this.index, this.value);
}

@JS()
@anonymous
class BarchartOptions {

}

@JS()
@anonymous
class ScatterplotOptions {
  String xLabel;
  String yLabel;
  num height;
}

@JS()
@anonymous
class SurfaceOptions {
  String name;
  String tab;
}

class Visor {
  external dynamic surface(SurfaceOptions options);
}

class Render {
  external void scatterplot(ScatterplotContainer container, ScatterplotData data, ScatterplotOptions opts);
  external void barchart(dynamic surface, List<BarchartValue> data, BarchartOptions opts);
}

external Render get render;

@JS("visor")
external Visor visor();
