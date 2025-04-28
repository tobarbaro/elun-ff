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
  // State field(s) for InputInstruction widget.
  FocusNode? inputInstructionFocusNode;
  TextEditingController? inputInstructionTextController;
  String? Function(BuildContext, String?)?
      inputInstructionTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

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

    inputInstructionFocusNode?.dispose();
    inputInstructionTextController?.dispose();

    footerModel.dispose();
  }
}
