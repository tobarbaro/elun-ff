import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExercisesRecord extends FirestoreRecord {
  ExercisesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "excerpt" field.
  String? _excerpt;
  String get excerpt => _excerpt ?? '';
  bool hasExcerpt() => _excerpt != null;

  // "instructions" field.
  List<String>? _instructions;
  List<String> get instructions => _instructions ?? const [];
  bool hasInstructions() => _instructions != null;

  // "objective" field.
  String? _objective;
  String get objective => _objective ?? '';
  bool hasObjective() => _objective != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  // "needs_week" field.
  bool? _needsWeek;
  bool get needsWeek => _needsWeek ?? false;
  bool hasNeedsWeek() => _needsWeek != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _excerpt = snapshotData['excerpt'] as String?;
    _instructions = getDataList(snapshotData['instructions']);
    _objective = snapshotData['objective'] as String?;
    _thumbnail = snapshotData['thumbnail'] as String?;
    _needsWeek = snapshotData['needs_week'] as bool?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exercises');

  static Stream<ExercisesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExercisesRecord.fromSnapshot(s));

  static Future<ExercisesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExercisesRecord.fromSnapshot(s));

  static ExercisesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExercisesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExercisesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExercisesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExercisesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExercisesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExercisesRecordData({
  String? image,
  String? title,
  String? excerpt,
  String? objective,
  String? thumbnail,
  bool? needsWeek,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'excerpt': excerpt,
      'objective': objective,
      'thumbnail': thumbnail,
      'needs_week': needsWeek,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExercisesRecordDocumentEquality implements Equality<ExercisesRecord> {
  const ExercisesRecordDocumentEquality();

  @override
  bool equals(ExercisesRecord? e1, ExercisesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.excerpt == e2?.excerpt &&
        listEquality.equals(e1?.instructions, e2?.instructions) &&
        e1?.objective == e2?.objective &&
        e1?.thumbnail == e2?.thumbnail &&
        e1?.needsWeek == e2?.needsWeek &&
        e1?.order == e2?.order;
  }

  @override
  int hash(ExercisesRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.excerpt,
        e?.instructions,
        e?.objective,
        e?.thumbnail,
        e?.needsWeek,
        e?.order
      ]);

  @override
  bool isValidKey(Object? o) => o is ExercisesRecord;
}
