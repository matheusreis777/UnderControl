import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TipoColaboradorRecord extends FirestoreRecord {
  TipoColaboradorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipoColaborador');

  static Stream<TipoColaboradorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoColaboradorRecord.fromSnapshot(s));

  static Future<TipoColaboradorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoColaboradorRecord.fromSnapshot(s));

  static TipoColaboradorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoColaboradorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoColaboradorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoColaboradorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoColaboradorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoColaboradorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoColaboradorRecordData({
  String? descricao,
  DocumentReference? empresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
      'empresa': empresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoColaboradorRecordDocumentEquality
    implements Equality<TipoColaboradorRecord> {
  const TipoColaboradorRecordDocumentEquality();

  @override
  bool equals(TipoColaboradorRecord? e1, TipoColaboradorRecord? e2) {
    return e1?.descricao == e2?.descricao && e1?.empresa == e2?.empresa;
  }

  @override
  int hash(TipoColaboradorRecord? e) =>
      const ListEquality().hash([e?.descricao, e?.empresa]);

  @override
  bool isValidKey(Object? o) => o is TipoColaboradorRecord;
}
