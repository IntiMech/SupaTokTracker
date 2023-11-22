import '../database.dart';

class ScrapedTiktoksCountTable extends SupabaseTable<ScrapedTiktoksCountRow> {
  @override
  String get tableName => 'scraped_tiktoks_count';

  @override
  ScrapedTiktoksCountRow createRow(Map<String, dynamic> data) =>
      ScrapedTiktoksCountRow(data);
}

class ScrapedTiktoksCountRow extends SupabaseDataRow {
  ScrapedTiktoksCountRow(super.data);

  @override
  SupabaseTable get table => ScrapedTiktoksCountTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  int? get tiktoksScrapedCount => getField<int>('tiktoks_scraped_count');
  set tiktoksScrapedCount(int? value) =>
      setField<int>('tiktoks_scraped_count', value);
}
