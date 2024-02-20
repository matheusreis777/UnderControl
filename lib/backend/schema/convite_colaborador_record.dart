import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ConviteColaboradorRecord extends FirestoreRecord {
  ConviteColaboradorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "aceito" field.
  bool? _aceito;
  bool get aceito => _aceito ?? false;
  bool hasAceito() => _aceito != null;

  // "tipoColaborador" field.
  String? _tipoColaborador;
  String get tipoColaborador => _tipoColaborador ?? '';
  bool hasTipoColaborador() => _tipoColaborador != null;

  // "dataRecusa" field.
  DateTime? _dataRecusa;
  DateTime? get dataRecusa => _dataRecusa;
  bool hasDataRecusa() => _dataRecusa != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "nome_empresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  bool hasNomeEmpresa() => _nomeEmpresa != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _aceito = snapshotData['aceito'] as bool?;
    _tipoColaborador = snapshotData['tipoColaborador'] as String?;
    _dataRecusa = snapshotData['dataRecusa'] as DateTime?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _nomeEmpresa = snapshotData['nome_empresa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conviteColaborador');

  static Stream<ConviteColaboradorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConviteColaboradorRecord.fromSnapshot(s));

  static Future<ConviteColaboradorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ConviteColaboradorRecord.fromSnapshot(s));

  static ConviteColaboradorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConviteColaboradorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConviteColaboradorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConviteColaboradorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConviteColaboradorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConviteColaboradorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConviteColaboradorRecordData({
  String? email,
  bool? aceito,
  String? tipoColaborador,
  DateTime? dataRecusa,
  DocumentReference? empresa,
  String? nomeEmpresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'aceito': aceito,
      'tipoColaborador': tipoColaborador,
      'dataRecusa': dataRecusa,
      'empresa': empresa,
      'nome_empresa': nomeEmpresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConviteColaboradorRecordDocumentEquality
    implements Equality<ConviteColaboradorRecord> {
  const ConviteColaboradorRecordDocumentEquality();

  @override
  bool equals(ConviteColaboradorRecord? e1, ConviteColaboradorRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.aceito == e2?.aceito &&
        e1?.tipoColaborador == e2?.tipoColaborador &&
        e1?.dataRecusa == e2?.dataRecusa &&
        e1?.empresa == e2?.empresa &&
        e1?.nomeEmpresa == e2?.nomeEmpresa;
  }

  @override
  int hash(ConviteColaboradorRecord? e) => const ListEquality().hash([
        e?.email,
        e?.aceito,
        e?.tipoColaborador,
        e?.dataRecusa,
        e?.empresa,
        e?.nomeEmpresa
      ]);

  @override
  bool isValidKey(Object? o) => o is ConviteColaboradorRecord;
}
