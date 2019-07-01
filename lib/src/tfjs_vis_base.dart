@JS('tfvis')
library tfjs_vis;

import "package:js/js.dart";

// TODO: Put public facing types in this file.

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
