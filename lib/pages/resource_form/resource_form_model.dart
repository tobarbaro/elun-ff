import '/backend/backend.dart';
import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'resource_form_widget.dart' show ResourceFormWidget;
import 'package:flutter/material.dart';

class ResourceFormModel extends FlutterFlowModel<ResourceFormWidget> {
  ///  Local state fields for this page.

  String? imagePVar;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for InputTitle widget.
  FocusNode? inputTitleFocusNode;
  TextEditingController? inputTitleTextController;
  String? Function(BuildContext, String?)? inputTitleTextControllerValidator;
  // State field(s) for InputDuration widget.
  FocusNode? inputDurationFocusNode;
  TextEditingController? inputDurationTextController;
  String? Function(BuildContext, String?)? inputDurationTextControllerValidator;
  // State field(s) for InputOrderHeader widget.
  FocusNode? inputOrderHeaderFocusNode;
  TextEditingController? inputOrderHeaderTextController;
  String? Function(BuildContext, String?)?
      inputOrderHeaderTextControllerValidator;
  // State field(s) for InputExceprt widget.
  FocusNode? inputExceprtFocusNode;
  TextEditingController? inputExceprtTextController;
  String? Function(BuildContext, String?)? inputExceprtTextControllerValidator;
  bool isDataUploading_uploadDataHr6 = false;
  FFUploadedFile uploadedLocalFile_uploadDataHr6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataHr6 = '';

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for SwitchTab widget.
  bool? switchTabValue;
  // State field(s) for InputParrafoOrder widget.
  FocusNode? inputParrafoOrderFocusNode;
  TextEditingController? inputParrafoOrderTextController;
  String? Function(BuildContext, String?)?
      inputParrafoOrderTextControllerValidator;
  // State field(s) for InputContenido widget.
  FocusNode? inputContenidoFocusNode;
  TextEditingController? inputContenidoTextController;
  String? Function(BuildContext, String?)?
      inputContenidoTextControllerValidator;
  Completer<List<ResourceRowsRecord>>? firestoreRequestCompleter;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ResourcesRecord? nResource;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    inputTitleFocusNode?.dispose();
    inputTitleTextController?.dispose();

    inputDurationFocusNode?.dispose();
    inputDurationTextController?.dispose();

    inputOrderHeaderFocusNode?.dispose();
    inputOrderHeaderTextController?.dispose();

    inputExceprtFocusNode?.dispose();
    inputExceprtTextController?.dispose();

    inputParrafoOrderFocusNode?.dispose();
    inputParrafoOrderTextController?.dispose();

    inputContenidoFocusNode?.dispose();
    inputContenidoTextController?.dispose();

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
