import '../database.dart';

class ScrapeFeedTable extends SupabaseTable<ScrapeFeedRow> {
  @override
  String get tableName => 'scrape_feed';

  @override
  ScrapeFeedRow createRow(Map<String, dynamic> data) => ScrapeFeedRow(data);
}

class ScrapeFeedRow extends SupabaseDataRow {
  ScrapeFeedRow(super.data);

  @override
  SupabaseTable get table => ScrapeFeedTable();

  int? get supabaseId => getField<int>('supabase_id');
  set supabaseId(int? value) => setField<int>('supabase_id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get profilePictureUrl => getField<String>('profile_picture_url');
  set profilePictureUrl(String? value) =>
      setField<String>('profile_picture_url', value);

  String? get tiktokUid => getField<String>('tiktok_uid');
  set tiktokUid(String? value) => setField<String>('tiktok_uid', value);
}
