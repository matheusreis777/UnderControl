import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TipoServicoRecord extends FirestoreRecord {
  TipoServicoRecord._(
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
      FirebaseFirestore.instance.collection('tipoServico');

  static Stream<TipoServicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoServicoRecord.fromSnapshot(s));

  static Future<TipoServicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoServicoRecord.fromSnapshot(s));

  static TipoServicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoServicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoServicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoServicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoServicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoServicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoServicoRecordData({
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

class TipoServicoRecordDocumentEquality implements Equality<TipoServicoRecord> {
  const TipoServicoRecordDocumentEquality();

  @override
  bool equals(TipoServicoRecord? e1, TipoServicoRecord? e2) {
    return e1?.descricao == e2?.descricao && e1?.empresa == e2?.empresa;
  }

  @override
  int hash(TipoServicoRecord? e) =>
      const ListEquality().hash([e?.descricao, e?.empresa]);

  @override
  bool isValidKey(Object? o) => o is TipoServicoRecord;
}
