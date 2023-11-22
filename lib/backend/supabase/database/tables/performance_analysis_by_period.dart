import '../database.dart';

class PerformanceAnalysisByPeriodTable
    extends SupabaseTable<PerformanceAnalysisByPeriodRow> {
  @override
  String get tableName => 'performance_analysis_by_period';

  @override
  PerformanceAnalysisByPeriodRow createRow(Map<String, dynamic> data) =>
      PerformanceAnalysisByPeriodRow(data);
}

class PerformanceAnalysisByPeriodRow extends SupabaseDataRow {
  PerformanceAnalysisByPeriodRow(super.data);

  @override
  SupabaseTable get table => PerformanceAnalysisByPeriodTable();

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get profilePictureUrl => getField<String>('profile_picture_url');
  set profilePictureUrl(String? value) =>
      setField<String>('profile_picture_url', value);

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  DateTime? get week => getField<DateTime>('week');
  set week(DateTime? value) => setField<DateTime>('week', value);

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  int? get weeklyViews => getField<int>('weekly_views');
  set weeklyViews(int? value) => setField<int>('weekly_views', value);

  int? get weeklyLikes => getField<int>('weekly_likes');
  set weeklyLikes(int? value) => setField<int>('weekly_likes', value);

  double? get newFollowersLast7Days =>
      getField<double>('new_followers_last_7_days');
  set newFollowersLast7Days(double? value) =>
      setField<double>('new_followers_last_7_days', value);
}
