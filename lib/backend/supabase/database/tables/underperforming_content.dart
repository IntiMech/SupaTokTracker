import '../database.dart';

class UnderperformingContentTable
    extends SupabaseTable<UnderperformingContentRow> {
  @override
  String get tableName => 'underperforming_content';

  @override
  UnderperformingContentRow createRow(Map<String, dynamic> data) =>
      UnderperformingContentRow(data);
}

class UnderperformingContentRow extends SupabaseDataRow {
  UnderperformingContentRow(super.data);

  @override
  SupabaseTable get table => UnderperformingContentTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  int? get videoId => getField<int>('video_id');
  set videoId(int? value) => setField<int>('video_id', value);

  int? get views => getField<int>('views');
  set views(int? value) => setField<int>('views', value);

  int? get likes => getField<int>('likes');
  set likes(int? value) => setField<int>('likes', value);

  int? get shares => getField<int>('shares');
  set shares(int? value) => setField<int>('shares', value);
}
