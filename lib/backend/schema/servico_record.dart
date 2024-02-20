import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicoRecord extends FirestoreRecord {
  ServicoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "dataInsert" field.
  DateTime? _dataInsert;
  DateTime? get dataInsert => _dataInsert;
  bool hasDataInsert() => _dataInsert != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "nomeCliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  bool hasNomeCliente() => _nomeCliente != null;

  // "telefoneCliente" field.
  String? _telefoneCliente;
  String get telefoneCliente => _telefoneCliente ?? '';
  bool hasTelefoneCliente() => _telefoneCliente != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "userInsert" field.
  DocumentReference? _userInsert;
  DocumentReference? get userInsert => _userInsert;
  bool hasUserInsert() => _userInsert != null;

  // "entrada" field.
  bool? _entrada;
  bool get entrada => _entrada ?? false;
  bool hasEntrada() => _entrada != null;

  // "saida" field.
  bool? _saida;
  bool get saida => _saida ?? false;
  bool hasSaida() => _saida != null;

  // "dateFilter" field.
  String? _dateFilter;
  String get dateFilter => _dateFilter ?? '';
  bool hasDateFilter() => _dateFilter != null;

  void _initializeFields() {
    _dataInsert = snapshotData['dataInsert'] as DateTime?;
    _tipo = snapshotData['tipo'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _nomeCliente = snapshotData['nomeCliente'] as String?;
    _telefoneCliente = snapshotData['telefoneCliente'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _userInsert = snapshotData['userInsert'] as DocumentReference?;
    _entrada = snapshotData['entrada'] as bool?;
    _saida = snapshotData['saida'] as bool?;
    _dateFilter = snapshotData['dateFilter'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servico');

  static Stream<ServicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicoRecord.fromSnapshot(s));

  static Future<ServicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicoRecord.fromSnapshot(s));

  static ServicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicoRecordData({
  DateTime? dataInsert,
  String? tipo,
  double? valor,
  String? nomeCliente,
  String? telefoneCliente,
  DocumentReference? empresa,
  DocumentReference? userInsert,
  bool? entrada,
  bool? saida,
  String? dateFilter,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dataInsert': dataInsert,
      'tipo': tipo,
      'valor': valor,
      'nomeCliente': nomeCliente,
      'telefoneCliente': telefoneCliente,
      'empresa': empresa,
      'userInsert': userInsert,
      'entrada': entrada,
      'saida': saida,
      'dateFilter': dateFilter,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicoRecordDocumentEquality implements Equality<ServicoRecord> {
  const ServicoRecordDocumentEquality();

  @override
  bool equals(ServicoRecord? e1, ServicoRecord? e2) {
    return e1?.dataInsert == e2?.dataInsert &&
        e1?.tipo == e2?.tipo &&
        e1?.valor == e2?.valor &&
        e1?.nomeCliente == e2?.nomeCliente &&
        e1?.telefoneCliente == e2?.telefoneCliente &&
        e1?.empresa == e2?.empresa &&
        e1?.userInsert == e2?.userInsert &&
        e1?.entrada == e2?.entrada &&
        e1?.saida == e2?.saida &&
        e1?.dateFilter == e2?.dateFilter;
  }

  @override
  int hash(ServicoRecord? e) => const ListEquality().hash([
        e?.dataInsert,
        e?.tipo,
        e?.valor,
        e?.nomeCliente,
        e?.telefoneCliente,
        e?.empresa,
        e?.userInsert,
        e?.entrada,
        e?.saida,
        e?.dateFilter
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicoRecord;
}
