import '../database.dart';

class ClienteTable extends SupabaseTable<ClienteRow> {
  @override
  String get tableName => 'Cliente';

  @override
  ClienteRow createRow(Map<String, dynamic> data) => ClienteRow(data);
}

class ClienteRow extends SupabaseDataRow {
  ClienteRow(super.data);

  @override
  SupabaseTable get table => ClienteTable();

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

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get userInsert => getField<String>('user_insert');
  set userInsert(String? value) => setField<String>('user_insert', value);
}
