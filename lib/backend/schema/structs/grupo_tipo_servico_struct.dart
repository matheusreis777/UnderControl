// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoTipoServicoStruct extends BaseStruct {
  GrupoTipoServicoStruct({
    int? total,
    String? descricaoTipoServico,
    String? descricaoTipoDespesa,
  })  : _total = total,
        _descricaoTipoServico = descricaoTipoServico,
        _descricaoTipoDespesa = descricaoTipoDespesa;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;
  void incrementTotal(int amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  // "descricao_tipo_servico" field.
  String? _descricaoTipoServico;
  String get descricaoTipoServico => _descricaoTipoServico ?? '';
  set descricaoTipoServico(String? val) => _descricaoTipoServico = val;
  bool hasDescricaoTipoServico() => _descricaoTipoServico != null;

  // "descricao_tipo_despesa" field.
  String? _descricaoTipoDespesa;
  String get descricaoTipoDespesa => _descricaoTipoDespesa ?? '';
  set descricaoTipoDespesa(String? val) => _descricaoTipoDespesa = val;
  bool hasDescricaoTipoDespesa() => _descricaoTipoDespesa != null;

  static GrupoTipoServicoStruct fromMap(Map<String, dynamic> data) =>
      GrupoTipoServicoStruct(
        total: castToType<int>(data['total']),
        descricaoTipoServico: data['descricao_tipo_servico'] as String?,
        descricaoTipoDespesa: data['descricao_tipo_despesa'] as String?,
      );

  static GrupoTipoServicoStruct? maybeFromMap(dynamic data) => data is Map
      ? GrupoTipoServicoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'descricao_tipo_servico': _descricaoTipoServico,
        'descricao_tipo_despesa': _descricaoTipoDespesa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'descricao_tipo_servico': serializeParam(
          _descricaoTipoServico,
          ParamType.String,
        ),
        'descricao_tipo_despesa': serializeParam(
          _descricaoTipoDespesa,
          ParamType.String,
        ),
      }.withoutNulls;

  static GrupoTipoServicoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GrupoTipoServicoStruct(
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        descricaoTipoServico: deserializeParam(
          data['descricao_tipo_servico'],
          ParamType.String,
          false,
        ),
        descricaoTipoDespesa: deserializeParam(
          data['descricao_tipo_despesa'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GrupoTipoServicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GrupoTipoServicoStruct &&
        total == other.total &&
        descricaoTipoServico == other.descricaoTipoServico &&
        descricaoTipoDespesa == other.descricaoTipoDespesa;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([total, descricaoTipoServico, descricaoTipoDespesa]);
}

GrupoTipoServicoStruct createGrupoTipoServicoStruct({
  int? total,
  String? descricaoTipoServico,
  String? descricaoTipoDespesa,
}) =>
    GrupoTipoServicoStruct(
      total: total,
      descricaoTipoServico: descricaoTipoServico,
      descricaoTipoDespesa: descricaoTipoDespesa,
    );
