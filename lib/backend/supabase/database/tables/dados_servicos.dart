import '../database.dart';

class DadosServicosTable extends SupabaseTable<DadosServicosRow> {
  @override
  String get tableName => 'dados_servicos';

  @override
  DadosServicosRow createRow(Map<String, dynamic> data) =>
      DadosServicosRow(data);
}

class DadosServicosRow extends SupabaseDataRow {
  DadosServicosRow(super.data);

  @override
  SupabaseTable get table => DadosServicosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get dataCriacaoTexto => getField<String>('data_criacao_texto');
  set dataCriacaoTexto(String? value) =>
      setField<String>('data_criacao_texto', value);

  String? get descricaoTipoServico =>
      getField<String>('descricao_tipo_servico');
  set descricaoTipoServico(String? value) =>
      setField<String>('descricao_tipo_servico', value);

  String? get descricaoTipoDespesa =>
      getField<String>('descricao_tipo_despesa');
  set descricaoTipoDespesa(String? value) =>
      setField<String>('descricao_tipo_despesa', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  bool? get entrada => getField<bool>('entrada');
  set entrada(bool? value) => setField<bool>('entrada', value);

  bool? get saida => getField<bool>('saida');
  set saida(bool? value) => setField<bool>('saida', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get telefoneCliente => getField<String>('telefone_cliente');
  set telefoneCliente(String? value) =>
      setField<String>('telefone_cliente', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);
}
