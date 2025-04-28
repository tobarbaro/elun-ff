import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for inputUsuario widget.
  FocusNode? inputUsuarioFocusNode;
  TextEditingController? inputUsuarioTextController;
  String? Function(BuildContext, String?)? inputUsuarioTextControllerValidator;
  // State field(s) for InputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  // State field(s) for InputPassword widget.
  FocusNode? inputPasswordFocusNode;
  TextEditingController? inputPasswordTextController;
  late bool inputPasswordVisibility;
  String? Function(BuildContext, String?)? inputPasswordTextControllerValidator;
  // State field(s) for InputConfirmPassword widget.
  FocusNode? inputConfirmPasswordFocusNode;
  TextEditingController? inputConfirmPasswordTextController;
  late bool inputConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      inputConfirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputPasswordVisibility = false;
    inputConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    inputUsuarioFocusNode?.dispose();
    inputUsuarioTextController?.dispose();

    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();

    inputPasswordFocusNode?.dispose();
    inputPasswordTextController?.dispose();

    inputConfirmPasswordFocusNode?.dispose();
    inputConfirmPasswordTextController?.dispose();
  }
}
