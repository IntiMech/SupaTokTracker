import '../database.dart';

class CreatorDashboardTable extends SupabaseTable<CreatorDashboardRow> {
  @override
  String get tableName => 'creator_dashboard';

  @override
  CreatorDashboardRow createRow(Map<String, dynamic> data) =>
      CreatorDashboardRow(data);
}

class CreatorDashboardRow extends SupabaseDataRow {
  CreatorDashboardRow(super.data);

  @override
  SupabaseTable get table => CreatorDashboardTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  int? get totalViews => getField<int>('total_views');
  set totalViews(int? value) => setField<int>('total_views', value);

  double? get averageLikes => getField<double>('average_likes');
  set averageLikes(double? value) => setField<double>('average_likes', value);

  int? get totalVideos => getField<int>('total_videos');
  set totalVideos(int? value) => setField<int>('total_videos', value);
}
