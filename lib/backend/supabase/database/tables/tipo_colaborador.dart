import '../database.dart';

class TipoColaboradorTable extends SupabaseTable<TipoColaboradorRow> {
  @override
  String get tableName => 'TipoColaborador';

  @override
  TipoColaboradorRow createRow(Map<String, dynamic> data) =>
      TipoColaboradorRow(data);
}

class TipoColaboradorRow extends SupabaseDataRow {
  TipoColaboradorRow(super.data);

  @override
  SupabaseTable get table => TipoColaboradorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);
}
