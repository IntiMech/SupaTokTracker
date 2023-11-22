import '../database.dart';

class ManualEntriesTable extends SupabaseTable<ManualEntriesRow> {
  @override
  String get tableName => 'manual_entries';

  @override
  ManualEntriesRow createRow(Map<String, dynamic> data) =>
      ManualEntriesRow(data);
}

class ManualEntriesRow extends SupabaseDataRow {
  ManualEntriesRow(super.data);

  @override
  SupabaseTable get table => ManualEntriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get creatorUsername => getField<String>('creator_username');
  set creatorUsername(String? value) =>
      setField<String>('creator_username', value);
}
