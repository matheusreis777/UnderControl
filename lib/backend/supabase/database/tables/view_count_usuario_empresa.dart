import '../database.dart';

class ViewCountUsuarioEmpresaTable
    extends SupabaseTable<ViewCountUsuarioEmpresaRow> {
  @override
  String get tableName => 'view_count_usuario_empresa';

  @override
  ViewCountUsuarioEmpresaRow createRow(Map<String, dynamic> data) =>
      ViewCountUsuarioEmpresaRow(data);
}

class ViewCountUsuarioEmpresaRow extends SupabaseDataRow {
  ViewCountUsuarioEmpresaRow(super.data);

  @override
  SupabaseTable get table => ViewCountUsuarioEmpresaTable();

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
