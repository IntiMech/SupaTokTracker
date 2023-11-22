import '../database.dart';

class BioKeywordsTable extends SupabaseTable<BioKeywordsRow> {
  @override
  String get tableName => 'bio_keywords';

  @override
  BioKeywordsRow createRow(Map<String, dynamic> data) => BioKeywordsRow(data);
}

class BioKeywordsRow extends SupabaseDataRow {
  BioKeywordsRow(super.data);

  @override
  SupabaseTable get table => BioKeywordsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get keyword => getField<String>('keyword');
  set keyword(String? value) => setField<String>('keyword', value);
}
