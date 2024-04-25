// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NomeUsuarioStruct extends BaseStruct {
  NomeUsuarioStruct({
    String? nomeUsuario,
  }) : _nomeUsuario = nomeUsuario;

  // "nome_usuario" field.
  String? _nomeUsuario;
  String get nomeUsuario => _nomeUsuario ?? '';
  set nomeUsuario(String? val) => _nomeUsuario = val;
  bool hasNomeUsuario() => _nomeUsuario != null;

  static NomeUsuarioStruct fromMap(Map<String, dynamic> data) =>
      NomeUsuarioStruct(
        nomeUsuario: data['nome_usuario'] as String?,
      );

  static NomeUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? NomeUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome_usuario': _nomeUsuario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_usuario': serializeParam(
          _nomeUsuario,
          ParamType.String,
        ),
      }.withoutNulls;

  static NomeUsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      NomeUsuarioStruct(
        nomeUsuario: deserializeParam(
          data['nome_usuario'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NomeUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NomeUsuarioStruct && nomeUsuario == other.nomeUsuario;
  }

  @override
  int get hashCode => const ListEquality().hash([nomeUsuario]);
}

NomeUsuarioStruct createNomeUsuarioStruct({
  String? nomeUsuario,
}) =>
    NomeUsuarioStruct(
      nomeUsuario: nomeUsuario,
    );
