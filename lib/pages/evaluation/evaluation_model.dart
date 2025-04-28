import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'evaluation_widget.dart' show EvaluationWidget;
import 'package:flutter/material.dart';

class EvaluationModel extends FlutterFlowModel<EvaluationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for SliderP1 widget.
  double? sliderP1Value;
  // State field(s) for SliderP2 widget.
  double? sliderP2Value;
  // State field(s) for SliderP3 widget.
  double? sliderP3Value;
  // State field(s) for SliderP4 widget.
  double? sliderP4Value;
  // State field(s) for SliderP5 widget.
  double? sliderP5Value;
  // State field(s) for SliderP6 widget.
  double? sliderP6Value;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
