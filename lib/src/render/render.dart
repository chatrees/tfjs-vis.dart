@JS('tfvis')
library render;

import "package:js/js.dart";

import 'barchart.dart';
import 'scatterplot.dart';

@JS()
@anonymous
class Render {
  external void scatterplot(ScatterplotContainer container, ScatterplotData data, ScatterplotOptions opts);
  external void barchart(dynamic surface, List<BarchartValue> data, BarchartOptions opts);
}

@JS('render')
external Render get render;
