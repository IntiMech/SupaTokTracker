import '../database.dart';

class AccountOverviewTable extends SupabaseTable<AccountOverviewRow> {
  @override
  String get tableName => 'account_overview';

  @override
  AccountOverviewRow createRow(Map<String, dynamic> data) =>
      AccountOverviewRow(data);
}

class AccountOverviewRow extends SupabaseDataRow {
  AccountOverviewRow(super.data);

  @override
  SupabaseTable get table => AccountOverviewTable();

  int? get accountId => getField<int>('account_id');
  set accountId(int? value) => setField<int>('account_id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);

  double? get avgVideoViews => getField<double>('avg_video_views');
  set avgVideoViews(double? value) =>
      setField<double>('avg_video_views', value);

  int? get recentVideosCount => getField<int>('recent_videos_count');
  set recentVideosCount(int? value) =>
      setField<int>('recent_videos_count', value);
}
