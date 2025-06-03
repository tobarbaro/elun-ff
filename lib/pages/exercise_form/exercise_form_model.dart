import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'exercise_form_widget.dart' show ExerciseFormWidget;
import 'package:flutter/material.dart';

class ExerciseFormModel extends FlutterFlowModel<ExerciseFormWidget> {
  ///  Local state fields for this page.

  List<String> instructionsPVar = [];
  void addToInstructionsPVar(String item) => instructionsPVar.add(item);
  void removeFromInstructionsPVar(String item) => instructionsPVar.remove(item);
  void removeAtIndexFromInstructionsPVar(int index) =>
      instructionsPVar.removeAt(index);
  void insertAtIndexInInstructionsPVar(int index, String item) =>
      instructionsPVar.insert(index, item);
  void updateInstructionsPVarAtIndex(int index, Function(String) updateFn) =>
      instructionsPVar[index] = updateFn(instructionsPVar[index]);

  String? imagePVar;

  String? thumbPVar;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for InputTitle widget.
  FocusNode? inputTitleFocusNode;
  TextEditingController? inputTitleTextController;
  String? Function(BuildContext, String?)? inputTitleTextControllerValidator;
  // State field(s) for InputExcerpt widget.
  FocusNode? inputExcerptFocusNode;
  TextEditingController? inputExcerptTextController;
  String? Function(BuildContext, String?)? inputExcerptTextControllerValidator;
  // State field(s) for InputObjective widget.
  FocusNode? inputObjectiveFocusNode;
  TextEditingController? inputObjectiveTextController;
  String? Function(BuildContext, String?)?
      inputObjectiveTextControllerValidator;
  // State field(s) for InputOrder widget.
  FocusNode? inputOrderFocusNode;
  TextEditingController? inputOrderTextController;
  String? Function(BuildContext, String?)? inputOrderTextControllerValidator;
  // State field(s) for InputInstruction widget.
  FocusNode? inputInstructionFocusNode;
  TextEditingController? inputInstructionTextController;
  String? Function(BuildContext, String?)?
      inputInstructionTextControllerValidator;
  bool isDataUploading_fileUploades = false;
  FFUploadedFile uploadedLocalFile_fileUploades =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fileUploades = '';

  bool isDataUploading_uploadThumbnail = false;
  FFUploadedFile uploadedLocalFile_uploadThumbnail =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadThumbnail = '';

  // State field(s) for SwitchNeedsWeek widget.
  bool? switchNeedsWeekValue;
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

    inputExcerptFocusNode?.dispose();
    inputExcerptTextController?.dispose();

    inputObjectiveFocusNode?.dispose();
    inputObjectiveTextController?.dispose();

    inputOrderFocusNode?.dispose();
    inputOrderTextController?.dispose();

    inputInstructionFocusNode?.dispose();
    inputInstructionTextController?.dispose();

    footerModel.dispose();
  }
}
