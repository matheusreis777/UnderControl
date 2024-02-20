import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "data_aniversario" field.
  String? _dataAniversario;
  String get dataAniversario => _dataAniversario ?? '';
  bool hasDataAniversario() => _dataAniversario != null;

  // "fidelidade" field.
  double? _fidelidade;
  double get fidelidade => _fidelidade ?? 0.0;
  bool hasFidelidade() => _fidelidade != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _email = snapshotData['email'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _dataAniversario = snapshotData['data_aniversario'] as String?;
    _fidelidade = castToType<double>(snapshotData['fidelidade']);
    _cep = snapshotData['cep'] as String?;
    _rua = snapshotData['rua'] as String?;
    _numero = castToType<int>(snapshotData['numero']);
    _bairro = snapshotData['bairro'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _uf = snapshotData['uf'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  String? nome,
  String? telefone,
  String? email,
  DocumentReference? empresa,
  String? dataAniversario,
  double? fidelidade,
  String? cep,
  String? rua,
  int? numero,
  String? bairro,
  String? complemento,
  String? cidade,
  String? uf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'telefone': telefone,
      'email': email,
      'empresa': empresa,
      'data_aniversario': dataAniversario,
      'fidelidade': fidelidade,
      'cep': cep,
      'rua': rua,
      'numero': numero,
      'bairro': bairro,
      'complemento': complemento,
      'cidade': cidade,
      'uf': uf,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.telefone == e2?.telefone &&
        e1?.email == e2?.email &&
        e1?.empresa == e2?.empresa &&
        e1?.dataAniversario == e2?.dataAniversario &&
        e1?.fidelidade == e2?.fidelidade &&
        e1?.cep == e2?.cep &&
        e1?.rua == e2?.rua &&
        e1?.numero == e2?.numero &&
        e1?.bairro == e2?.bairro &&
        e1?.complemento == e2?.complemento &&
        e1?.cidade == e2?.cidade &&
        e1?.uf == e2?.uf;
  }

  @override
  int hash(ClienteRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.telefone,
        e?.email,
        e?.empresa,
        e?.dataAniversario,
        e?.fidelidade,
        e?.cep,
        e?.rua,
        e?.numero,
        e?.bairro,
        e?.complemento,
        e?.cidade,
        e?.uf
      ]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
