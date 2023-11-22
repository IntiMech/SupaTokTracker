import '../database.dart';

class ExcludedBioKeywordsTable extends SupabaseTable<ExcludedBioKeywordsRow> {
  @override
  String get tableName => 'excluded_bio_keywords';

  @override
  ExcludedBioKeywordsRow createRow(Map<String, dynamic> data) =>
      ExcludedBioKeywordsRow(data);
}

class ExcludedBioKeywordsRow extends SupabaseDataRow {
  ExcludedBioKeywordsRow(super.data);

  @override
  SupabaseTable get table => ExcludedBioKeywordsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get keyword => getField<String>('keyword');
  set keyword(String? value) => setField<String>('keyword', value);
}
