import '../database.dart';

class ServicoTable extends SupabaseTable<ServicoRow> {
  @override
  String get tableName => 'Servico';

  @override
  ServicoRow createRow(Map<String, dynamic> data) => ServicoRow(data);
}

class ServicoRow extends SupabaseDataRow {
  ServicoRow(super.data);

  @override
  SupabaseTable get table => ServicoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get tipoServicoId => getField<int>('tipo_servico_id');
  set tipoServicoId(int? value) => setField<int>('tipo_servico_id', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  bool? get entrada => getField<bool>('entrada');
  set entrada(bool? value) => setField<bool>('entrada', value);

  bool? get saida => getField<bool>('saida');
  set saida(bool? value) => setField<bool>('saida', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get tipoDespesaId => getField<int>('tipo_despesa_id');
  set tipoDespesaId(int? value) => setField<int>('tipo_despesa_id', value);
}
