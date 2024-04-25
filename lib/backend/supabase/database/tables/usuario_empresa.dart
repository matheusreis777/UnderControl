import '../database.dart';

class UsuarioEmpresaTable extends SupabaseTable<UsuarioEmpresaRow> {
  @override
  String get tableName => 'UsuarioEmpresa';

  @override
  UsuarioEmpresaRow createRow(Map<String, dynamic> data) =>
      UsuarioEmpresaRow(data);
}

class UsuarioEmpresaRow extends SupabaseDataRow {
  UsuarioEmpresaRow(super.data);

  @override
  SupabaseTable get table => UsuarioEmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);
}
