import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'play_list_widget.dart' show PlayListWidget;
import 'package:flutter/material.dart';

class PlayListModel extends FlutterFlowModel<PlayListWidget> {
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
