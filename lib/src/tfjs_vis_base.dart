@JS('tfvis')
library tfjs_vis;

import "package:js/js.dart";

// TODO: Put public facing types in this file.

@JS()
@anonymous
class ScatterplotContainer {
  String name;
}

///
/// Add @JS() annotation to make the class works with Object.assign(..) function
///
/// @see webpack://tfvis/./dist/render/scatterplot.js
///
@JS()
@anonymous
class Point2D {
  num x;
  num y;
}

@JS()
@anonymous
class ScatterplotData {
  List values;
  List<String> series;
}

@JS()
@anonymous
class BarchartValue {
  num index;
  num value;
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

@JS()
@anonymous
class Visor {
  external dynamic surface(SurfaceOptions options);
}

@JS()
@anonymous
class Render {
  external void scatterplot(ScatterplotContainer container, ScatterplotData data, ScatterplotOptions opts);
  external void barchart(dynamic surface, List<BarchartValue> data, BarchartOptions opts);
}

@JS("render")
external Render get render;

@JS("visor")
external Visor visor();
