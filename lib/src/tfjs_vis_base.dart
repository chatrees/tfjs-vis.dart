@JS('tfvis')
library tfjs_vis;

import "package:js/js.dart";

// TODO: Put public facing types in this file.

@JS()
@anonymous
class ScatterplotContainer {
  String name;
}

class ScatterplotValue {
  num x;
  num y;

  ScatterplotValue(this.x, this.y);
}

@JS()
@anonymous
class ScatterplotData {
  List<ScatterplotValue> values;
}

@JS()
@anonymous
class ScatterplotOptions {
  String xLabel;
  String yLabel;
  num height;
}

class _Render {
  external void scatterplot(ScatterplotContainer container, ScatterplotData data, ScatterplotOptions opts);
}

external _Render get render;
