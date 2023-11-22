import '../database.dart';

class SoundsTable extends SupabaseTable<SoundsRow> {
  @override
  String get tableName => 'sounds';

  @override
  SoundsRow createRow(Map<String, dynamic> data) => SoundsRow(data);
}

class SoundsRow extends SupabaseDataRow {
  SoundsRow(super.data);

  @override
  SupabaseTable get table => SoundsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get soundTitle => getField<String>('sound_title')!;
  set soundTitle(String value) => setField<String>('sound_title', value);

  String? get soundOwner => getField<String>('sound_owner');
  set soundOwner(String? value) => setField<String>('sound_owner', value);

  String? get soundUid => getField<String>('sound_uid');
  set soundUid(String? value) => setField<String>('sound_uid', value);

  int? get usedIn => getField<int>('used_in');
  set usedIn(int? value) => setField<int>('used_in', value);
}
