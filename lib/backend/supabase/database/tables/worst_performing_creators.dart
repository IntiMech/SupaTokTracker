import '../database.dart';

class WorstPerformingCreatorsTable
    extends SupabaseTable<WorstPerformingCreatorsRow> {
  @override
  String get tableName => 'worst_performing_creators';

  @override
  WorstPerformingCreatorsRow createRow(Map<String, dynamic> data) =>
      WorstPerformingCreatorsRow(data);
}

class WorstPerformingCreatorsRow extends SupabaseDataRow {
  WorstPerformingCreatorsRow(super.data);

  @override
  SupabaseTable get table => WorstPerformingCreatorsTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  double? get avgViews => getField<double>('avg_views');
  set avgViews(double? value) => setField<double>('avg_views', value);
}
