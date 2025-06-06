import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

/// Devuelve el documento visto
Future<ExerciseProgressRecord?> getProgress(
  BuildContext context, {
  DocumentReference? exerciseRef,
  int? statusParam,
  bool? createIfNotExists,
}) async {
  ExerciseProgressRecord? returnProgress;
  ExerciseProgressRecord? newProgress;

  returnProgress = await queryExerciseProgressRecordOnce(
    queryBuilder: (exerciseProgressRecord) => exerciseProgressRecord
        .where(
          'user',
          isEqualTo: currentUserReference,
        )
        .where(
          'exercise',
          isEqualTo: exerciseRef,
        )
        .where(
          'status',
          isEqualTo: statusParam,
        ),
    singleRecord: true,
  ).then((s) => s.firstOrNull);
  if (returnProgress != null) {
    return returnProgress;
  }

  if (!createIfNotExists!) {
    return null;
  }

  var exerciseProgressRecordReference = ExerciseProgressRecord.collection.doc();
  await exerciseProgressRecordReference.set(createExerciseProgressRecordData(
    user: currentUserReference,
    exercise: exerciseRef,
    status: statusParam,
    createdAt: getCurrentTimestamp,
  ));
  newProgress = ExerciseProgressRecord.getDocumentFromData(
      createExerciseProgressRecordData(
        user: currentUserReference,
        exercise: exerciseRef,
        status: statusParam,
        createdAt: getCurrentTimestamp,
      ),
      exerciseProgressRecordReference);
  return newProgress;
}

Future<ExerciseProgressRecord?> clickProgressActionBlock(
  BuildContext context, {
  required ExerciseProgressRecord? firstProgress,
  required ExerciseProgressRecord? prevProgress,
  required int? status,
  required DocumentReference? currentExerciseRef,
  bool? checkDate,
}) async {
  ExerciseProgressRecord? newProgress;

  if (!(prevProgress != null)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Aun tienes días pendientes por completar.',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  } else if (checkDate! &&
      (functions.addOrSubtractDays(prevProgress.createdAt!, 1) >
          getCurrentTimestamp)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Deben pasar mas de 24 horas desde tu último registro para poder seguir.',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  } else {
    var exerciseProgressRecordReference =
        ExerciseProgressRecord.collection.doc();
    await exerciseProgressRecordReference.set(createExerciseProgressRecordData(
      user: currentUserReference,
      exercise: currentExerciseRef,
      status: status,
      createdAt: getCurrentTimestamp,
    ));
    newProgress = ExerciseProgressRecord.getDocumentFromData(
        createExerciseProgressRecordData(
          user: currentUserReference,
          exercise: currentExerciseRef,
          status: status,
          createdAt: getCurrentTimestamp,
        ),
        exerciseProgressRecordReference);
    return newProgress;
  }

  return null;
}
