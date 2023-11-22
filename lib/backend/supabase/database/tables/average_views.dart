import '../database.dart';

class AverageViewsTable extends SupabaseTable<AverageViewsRow> {
  @override
  String get tableName => 'average_views';

  @override
  AverageViewsRow createRow(Map<String, dynamic> data) => AverageViewsRow(data);
}

class AverageViewsRow extends SupabaseDataRow {
  AverageViewsRow(super.data);

  @override
  SupabaseTable get table => AverageViewsTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  double? get avgViewsLastWeek => getField<double>('avg_views_last_week');
  set avgViewsLastWeek(double? value) =>
      setField<double>('avg_views_last_week', value);

  double? get avgViewsLastMonth => getField<double>('avg_views_last_month');
  set avgViewsLastMonth(double? value) =>
      setField<double>('avg_views_last_month', value);
}
