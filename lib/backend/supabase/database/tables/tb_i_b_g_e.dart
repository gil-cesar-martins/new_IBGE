import '../database.dart';

class TbIBGETable extends SupabaseTable<TbIBGERow> {
  @override
  String get tableName => 'tbIBGE';

  @override
  TbIBGERow createRow(Map<String, dynamic> data) => TbIBGERow(data);
}

class TbIBGERow extends SupabaseDataRow {
  TbIBGERow(super.data);

  @override
  SupabaseTable get table => TbIBGETable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get idade => getField<int>('idade');
  set idade(int? value) => setField<int>('idade', value);

  int? get filhos => getField<int>('filhos');
  set filhos(int? value) => setField<int>('filhos', value);
}
