import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResourceRowsRecord extends FirestoreRecord {
  ResourceRowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "has_tab" field.
  bool? _hasTab;
  bool get hasTab => _hasTab ?? false;
  bool hasHasTab() => _hasTab != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "resource_id" field.
  DocumentReference? _resourceId;
  DocumentReference? get resourceId => _resourceId;
  bool hasResourceId() => _resourceId != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _hasTab = snapshotData['has_tab'] as bool?;
    _type = castToType<int>(snapshotData['type']);
    _order = castToType<int>(snapshotData['order']);
    _resourceId = snapshotData['resource_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resource_rows');

  static Stream<ResourceRowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResourceRowsRecord.fromSnapshot(s));

  static Future<ResourceRowsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResourceRowsRecord.fromSnapshot(s));

  static ResourceRowsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResourceRowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResourceRowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResourceRowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResourceRowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResourceRowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResourceRowsRecordData({
  String? content,
  bool? hasTab,
  int? type,
  int? order,
  DocumentReference? resourceId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'has_tab': hasTab,
      'type': type,
      'order': order,
      'resource_id': resourceId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResourceRowsRecordDocumentEquality
    implements Equality<ResourceRowsRecord> {
  const ResourceRowsRecordDocumentEquality();

  @override
  bool equals(ResourceRowsRecord? e1, ResourceRowsRecord? e2) {
    return e1?.content == e2?.content &&
        e1?.hasTab == e2?.hasTab &&
        e1?.type == e2?.type &&
        e1?.order == e2?.order &&
        e1?.resourceId == e2?.resourceId;
  }

  @override
  int hash(ResourceRowsRecord? e) => const ListEquality()
      .hash([e?.content, e?.hasTab, e?.type, e?.order, e?.resourceId]);

  @override
  bool isValidKey(Object? o) => o is ResourceRowsRecord;
}
