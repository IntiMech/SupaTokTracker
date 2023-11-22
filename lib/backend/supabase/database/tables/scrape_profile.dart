import '../database.dart';

class ScrapeProfileTable extends SupabaseTable<ScrapeProfileRow> {
  @override
  String get tableName => 'scrape_profile';

  @override
  ScrapeProfileRow createRow(Map<String, dynamic> data) =>
      ScrapeProfileRow(data);
}

class ScrapeProfileRow extends SupabaseDataRow {
  ScrapeProfileRow(super.data);

  @override
  SupabaseTable get table => ScrapeProfileTable();

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
