import '../database.dart';

class VideosByTimeframeTable extends SupabaseTable<VideosByTimeframeRow> {
  @override
  String get tableName => 'videos_by_timeframe';

  @override
  VideosByTimeframeRow createRow(Map<String, dynamic> data) =>
      VideosByTimeframeRow(data);
}

class VideosByTimeframeRow extends SupabaseDataRow {
  VideosByTimeframeRow(super.data);

  @override
  SupabaseTable get table => VideosByTimeframeTable();

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  int? get videosLast3Days => getField<int>('videos_last_3_days');
  set videosLast3Days(int? value) => setField<int>('videos_last_3_days', value);

  int? get videosLast7Days => getField<int>('videos_last_7_days');
  set videosLast7Days(int? value) => setField<int>('videos_last_7_days', value);

  int? get videosLast14Days => getField<int>('videos_last_14_days');
  set videosLast14Days(int? value) =>
      setField<int>('videos_last_14_days', value);

  int? get videosLast28Days => getField<int>('videos_last_28_days');
  set videosLast28Days(int? value) =>
      setField<int>('videos_last_28_days', value);

  int? get videosLast60Days => getField<int>('videos_last_60_days');
  set videosLast60Days(int? value) =>
      setField<int>('videos_last_60_days', value);
}
