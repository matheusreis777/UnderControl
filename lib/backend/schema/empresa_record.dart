import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaRecord extends FirestoreRecord {
  EmpresaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  // "cpf" field.
  bool? _cpf;
  bool get cpf => _cpf ?? false;
  bool hasCpf() => _cpf != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "site" field.
  String? _site;
  String get site => _site ?? '';
  bool hasSite() => _site != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "ativa" field.
  bool? _ativa;
  bool get ativa => _ativa ?? false;
  bool hasAtiva() => _ativa != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  void _initializeFields() {
    _documento = snapshotData['documento'] as String?;
    _cpf = snapshotData['cpf'] as bool?;
    _nome = snapshotData['nome'] as String?;
    _logo = snapshotData['logo'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _email = snapshotData['email'] as String?;
    _site = snapshotData['site'] as String?;
    _cep = snapshotData['cep'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _numero = castToType<int>(snapshotData['numero']);
    _complemento = snapshotData['complemento'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _ativa = snapshotData['ativa'] as bool?;
    _cidade = snapshotData['cidade'] as String?;
    _uf = snapshotData['uf'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresa');

  static Stream<EmpresaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresaRecord.fromSnapshot(s));

  static Future<EmpresaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresaRecord.fromSnapshot(s));

  static EmpresaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresaRecordData({
  String? documento,
  bool? cpf,
  String? nome,
  String? logo,
  String? telefone,
  String? email,
  String? site,
  String? cep,
  String? endereco,
  int? numero,
  String? complemento,
  String? bairro,
  bool? ativa,
  String? cidade,
  String? uf,
  DocumentReference? empresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'documento': documento,
      'cpf': cpf,
      'nome': nome,
      'logo': logo,
      'telefone': telefone,
      'email': email,
      'site': site,
      'cep': cep,
      'endereco': endereco,
      'numero': numero,
      'complemento': complemento,
      'bairro': bairro,
      'ativa': ativa,
      'cidade': cidade,
      'uf': uf,
      'empresa': empresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresaRecordDocumentEquality implements Equality<EmpresaRecord> {
  const EmpresaRecordDocumentEquality();

  @override
  bool equals(EmpresaRecord? e1, EmpresaRecord? e2) {
    return e1?.documento == e2?.documento &&
        e1?.cpf == e2?.cpf &&
        e1?.nome == e2?.nome &&
        e1?.logo == e2?.logo &&
        e1?.telefone == e2?.telefone &&
        e1?.email == e2?.email &&
        e1?.site == e2?.site &&
        e1?.cep == e2?.cep &&
        e1?.endereco == e2?.endereco &&
        e1?.numero == e2?.numero &&
        e1?.complemento == e2?.complemento &&
        e1?.bairro == e2?.bairro &&
        e1?.ativa == e2?.ativa &&
        e1?.cidade == e2?.cidade &&
        e1?.uf == e2?.uf &&
        e1?.empresa == e2?.empresa;
  }

  @override
  int hash(EmpresaRecord? e) => const ListEquality().hash([
        e?.documento,
        e?.cpf,
        e?.nome,
        e?.logo,
        e?.telefone,
        e?.email,
        e?.site,
        e?.cep,
        e?.endereco,
        e?.numero,
        e?.complemento,
        e?.bairro,
        e?.ativa,
        e?.cidade,
        e?.uf,
        e?.empresa
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresaRecord;
}
