import '/backend/backend.dart';
import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'posts_widget.dart' show PostsWidget;
import 'package:flutter/material.dart';

class PostsModel extends FlutterFlowModel<PostsWidget> {
  ///  Local state fields for this page.

  bool onlyFavs = false;

  DateTime? dateStart;

  DateTime? dateEnd;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  Completer<List<PostsRecord>>? firestoreRequestCompleter;
  DateTime? datePicked2;
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

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
