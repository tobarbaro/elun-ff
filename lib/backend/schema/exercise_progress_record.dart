import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExerciseProgressRecord extends FirestoreRecord {
  ExerciseProgressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "exercise" field.
  DocumentReference? _exercise;
  DocumentReference? get exercise => _exercise;
  bool hasExercise() => _exercise != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "click_time" field.
  List<DateTime>? _clickTime;
  List<DateTime> get clickTime => _clickTime ?? const [];
  bool hasClickTime() => _clickTime != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _exercise = snapshotData['exercise'] as DocumentReference?;
    _status = castToType<int>(snapshotData['status']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _clickTime = getDataList(snapshotData['click_time']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exercise_progress');

  static Stream<ExerciseProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExerciseProgressRecord.fromSnapshot(s));

  static Future<ExerciseProgressRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExerciseProgressRecord.fromSnapshot(s));

  static ExerciseProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExerciseProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExerciseProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExerciseProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExerciseProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExerciseProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExerciseProgressRecordData({
  DocumentReference? user,
  DocumentReference? exercise,
  int? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'exercise': exercise,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExerciseProgressRecordDocumentEquality
    implements Equality<ExerciseProgressRecord> {
  const ExerciseProgressRecordDocumentEquality();

  @override
  bool equals(ExerciseProgressRecord? e1, ExerciseProgressRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.exercise == e2?.exercise &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.clickTime, e2?.clickTime);
  }

  @override
  int hash(ExerciseProgressRecord? e) => const ListEquality()
      .hash([e?.user, e?.exercise, e?.status, e?.createdAt, e?.clickTime]);

  @override
  bool isValidKey(Object? o) => o is ExerciseProgressRecord;
}
