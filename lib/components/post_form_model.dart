import '/flutter_flow/flutter_flow_util.dart';
import 'post_form_widget.dart' show PostFormWidget;
import 'package:flutter/material.dart';

class PostFormModel extends FlutterFlowModel<PostFormWidget> {
  ///  Local state fields for this component.

  bool isFav = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for inputContent widget.
  FocusNode? inputContentFocusNode;
  TextEditingController? inputContentTextController;
  String? Function(BuildContext, String?)? inputContentTextControllerValidator;
  String? _inputContentTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    inputContentTextControllerValidator = _inputContentTextControllerValidator;
  }

  @override
  void dispose() {
    inputContentFocusNode?.dispose();
    inputContentTextController?.dispose();
  }
}
