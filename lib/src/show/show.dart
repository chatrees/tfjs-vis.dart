@JS('tfvis')
library show;

import 'dart:core';

import "package:js/js.dart";

import 'package:tfjs/tfjs.dart' as tf;
import 'package:tfjs_vis/src/visor/visor.dart';

@JS()
@anonymous
class FitCallbacksOptions {
  List<String> callbacks;
  bool zoomToFitAccuracy;
  List<num> xAxisDomain;
  List<num> yAxisDomain;
  bool zoomToFit;
  int width;
  int height;
  String xLabel;
  String yLabel;
  int fontSize;
  String xType;
  String yType;
}

@JS()
@anonymous
class Show {
  external dynamic modelSummary(dynamic container, tf.Model model);
  external dynamic fitCallbacks (Container container, List<String> metrics, FitCallbacksOptions opts);
}

@JS('show')
external Show get show;