import '/flutter_flow/flutter_flow_util.dart';
import 'play_list_form_widget.dart' show PlayListFormWidget;
import 'package:flutter/material.dart';

class PlayListFormModel extends FlutterFlowModel<PlayListFormWidget> {
  ///  Local state fields for this component.

  String? imageVar;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for inputTitle widget.
  FocusNode? inputTitleFocusNode;
  TextEditingController? inputTitleTextController;
  String? Function(BuildContext, String?)? inputTitleTextControllerValidator;
  String? _inputTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for inputURL widget.
  FocusNode? inputURLFocusNode;
  TextEditingController? inputURLTextController;
  String? Function(BuildContext, String?)? inputURLTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    inputTitleTextControllerValidator = _inputTitleTextControllerValidator;
  }

  @override
  void dispose() {
    inputTitleFocusNode?.dispose();
    inputTitleTextController?.dispose();

    inputURLFocusNode?.dispose();
    inputURLTextController?.dispose();
  }
}
