import '../database.dart';

class VideoStatsTable extends SupabaseTable<VideoStatsRow> {
  @override
  String get tableName => 'video_stats';

  @override
  VideoStatsRow createRow(Map<String, dynamic> data) => VideoStatsRow(data);
}

class VideoStatsRow extends SupabaseDataRow {
  VideoStatsRow(super.data);

  @override
  SupabaseTable get table => VideoStatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get views => getField<int>('views');
  set views(int? value) => setField<int>('views', value);

  int? get comments => getField<int>('comments');
  set comments(int? value) => setField<int>('comments', value);

  int? get likes => getField<int>('likes');
  set likes(int? value) => setField<int>('likes', value);

  int? get shares => getField<int>('shares');
  set shares(int? value) => setField<int>('shares', value);

  int? get downloads => getField<int>('downloads');
  set downloads(int? value) => setField<int>('downloads', value);

  int? get favourited => getField<int>('favourited');
  set favourited(int? value) => setField<int>('favourited', value);

  int? get videoId => getField<int>('video_id');
  set videoId(int? value) => setField<int>('video_id', value);
}
