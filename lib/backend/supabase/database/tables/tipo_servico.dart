import '../database.dart';

class TipoServicoTable extends SupabaseTable<TipoServicoRow> {
  @override
  String get tableName => 'TipoServico';

  @override
  TipoServicoRow createRow(Map<String, dynamic> data) => TipoServicoRow(data);
}

class TipoServicoRow extends SupabaseDataRow {
  TipoServicoRow(super.data);

  @override
  SupabaseTable get table => TipoServicoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);
}
