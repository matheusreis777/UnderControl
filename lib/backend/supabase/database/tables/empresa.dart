import '../database.dart';

class EmpresaTable extends SupabaseTable<EmpresaRow> {
  @override
  String get tableName => 'Empresa';

  @override
  EmpresaRow createRow(Map<String, dynamic> data) => EmpresaRow(data);
}

class EmpresaRow extends SupabaseDataRow {
  EmpresaRow(super.data);

  @override
  SupabaseTable get table => EmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get documento => getField<String>('documento');
  set documento(String? value) => setField<String>('documento', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  int? get numero => getField<int>('numero');
  set numero(int? value) => setField<int>('numero', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  bool? get ehCpf => getField<bool>('ehCpf');
  set ehCpf(bool? value) => setField<bool>('ehCpf', value);
}
