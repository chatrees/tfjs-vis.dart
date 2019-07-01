@JS('tfvis')
library show;

import "package:js/js.dart";

//FIXME:
//import 'package:tfjs/tfjs.dart' as tf;

@JS()
@anonymous
class Show {
  external dynamic modelSummary(dynamic container, dynamic model);
}

@JS('show')
external Show get show;