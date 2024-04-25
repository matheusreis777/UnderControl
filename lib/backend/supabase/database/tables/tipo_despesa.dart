import '../database.dart';

class TipoDespesaTable extends SupabaseTable<TipoDespesaRow> {
  @override
  String get tableName => 'TipoDespesa';

  @override
  TipoDespesaRow createRow(Map<String, dynamic> data) => TipoDespesaRow(data);
}

class TipoDespesaRow extends SupabaseDataRow {
  TipoDespesaRow(super.data);

  @override
  SupabaseTable get table => TipoDespesaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);
}
