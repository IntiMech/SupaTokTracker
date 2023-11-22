import '../database.dart';

class BestPerformingVideosTable extends SupabaseTable<BestPerformingVideosRow> {
  @override
  String get tableName => 'best_performing_videos';

  @override
  BestPerformingVideosRow createRow(Map<String, dynamic> data) =>
      BestPerformingVideosRow(data);
}

class BestPerformingVideosRow extends SupabaseDataRow {
  BestPerformingVideosRow(super.data);

  @override
  SupabaseTable get table => BestPerformingVideosTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  int? get videoId => getField<int>('video_id');
  set videoId(int? value) => setField<int>('video_id', value);

  int? get views => getField<int>('views');
  set views(int? value) => setField<int>('views', value);
}
