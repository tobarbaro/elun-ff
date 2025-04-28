import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResourcesRecord extends FirestoreRecord {
  ResourcesRecord._(
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

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "reading_time" field.
  int? _readingTime;
  int get readingTime => _readingTime ?? 0;
  bool hasReadingTime() => _readingTime != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _excerpt = snapshotData['excerpt'] as String?;
    _content = snapshotData['content'] as String?;
    _readingTime = castToType<int>(snapshotData['reading_time']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resources');

  static Stream<ResourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResourcesRecord.fromSnapshot(s));

  static Future<ResourcesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResourcesRecord.fromSnapshot(s));

  static ResourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResourcesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResourcesRecordData({
  String? image,
  String? title,
  String? excerpt,
  String? content,
  int? readingTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'excerpt': excerpt,
      'content': content,
      'reading_time': readingTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResourcesRecordDocumentEquality implements Equality<ResourcesRecord> {
  const ResourcesRecordDocumentEquality();

  @override
  bool equals(ResourcesRecord? e1, ResourcesRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.excerpt == e2?.excerpt &&
        e1?.content == e2?.content &&
        e1?.readingTime == e2?.readingTime;
  }

  @override
  int hash(ResourcesRecord? e) => const ListEquality()
      .hash([e?.image, e?.title, e?.excerpt, e?.content, e?.readingTime]);

  @override
  bool isValidKey(Object? o) => o is ResourcesRecord;
}
