import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  String? profileImage;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for inputNombre widget.
  FocusNode? inputNombreFocusNode;
  TextEditingController? inputNombreTextController;
  String? Function(BuildContext, String?)? inputNombreTextControllerValidator;
  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  // State field(s) for inputPass widget.
  FocusNode? inputPassFocusNode;
  TextEditingController? inputPassTextController;
  late bool inputPassVisibility;
  String? Function(BuildContext, String?)? inputPassTextControllerValidator;
  // State field(s) for inputPassConfirm widget.
  FocusNode? inputPassConfirmFocusNode;
  TextEditingController? inputPassConfirmTextController;
  late bool inputPassConfirmVisibility;
  String? Function(BuildContext, String?)?
      inputPassConfirmTextControllerValidator;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    inputPassVisibility = false;
    inputPassConfirmVisibility = false;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    inputNombreFocusNode?.dispose();
    inputNombreTextController?.dispose();

    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();

    inputPassFocusNode?.dispose();
    inputPassTextController?.dispose();

    inputPassConfirmFocusNode?.dispose();
    inputPassConfirmTextController?.dispose();

    footerModel.dispose();
  }
}
