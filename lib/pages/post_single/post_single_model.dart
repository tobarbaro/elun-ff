import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_single_widget.dart' show PostSingleWidget;
import 'package:flutter/material.dart';

class PostSingleModel extends FlutterFlowModel<PostSingleWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    footerModel.dispose();
  }
}
