import '../database.dart';

class OnlyfansCreatorsTable extends SupabaseTable<OnlyfansCreatorsRow> {
  @override
  String get tableName => 'onlyfans_creators';

  @override
  OnlyfansCreatorsRow createRow(Map<String, dynamic> data) =>
      OnlyfansCreatorsRow(data);
}

class OnlyfansCreatorsRow extends SupabaseDataRow {
  OnlyfansCreatorsRow(super.data);

  @override
  SupabaseTable get table => OnlyfansCreatorsTable();

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);
}
