/// Support for doing something awesome.
///
/// More dartdocs go here.
@JS()
library tfjs_vis;

import "package:js/js.dart";

export 'src/tfjs_vis_base.dart';

// TODO: Export any libraries intended for clients of this package.

@JS()
@anonymous
class ScatterplotContainer {
  dynamic name;
}

@JS()
@anonymous
class ScatterplotData {
  dynamic values;
}

@JS()
@anonymous
class ScatterplotOpts {
  dynamic xLabel;
  dynamic yLabel;
  dynamic height;
}

@JS("tfvis.render.scatterplot")
external void scatterplot(ScatterplotContainer container, ScatterplotData data, ScatterplotOpts opts);
