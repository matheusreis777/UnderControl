import '../database.dart';

class UsuarioTable extends SupabaseTable<UsuarioRow> {
  @override
  String get tableName => 'Usuario';

  @override
  UsuarioRow createRow(Map<String, dynamic> data) => UsuarioRow(data);
}

class UsuarioRow extends SupabaseDataRow {
  UsuarioRow(super.data);

  @override
  SupabaseTable get table => UsuarioTable();

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

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  bool? get admin => getField<bool>('admin');
  set admin(bool? value) => setField<bool>('admin', value);

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

  String? get uiid => getField<String>('uiid');
  set uiid(String? value) => setField<String>('uiid', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
