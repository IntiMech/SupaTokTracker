import '../database.dart';

class TrendingVideosTable extends SupabaseTable<TrendingVideosRow> {
  @override
  String get tableName => 'trending_videos';

  @override
  TrendingVideosRow createRow(Map<String, dynamic> data) =>
      TrendingVideosRow(data);
}

class TrendingVideosRow extends SupabaseDataRow {
  TrendingVideosRow(super.data);

  @override
  SupabaseTable get table => TrendingVideosTable();

  int? get videoId => getField<int>('video_id');
  set videoId(int? value) => setField<int>('video_id', value);

  String? get videoCaption => getField<String>('video_caption');
  set videoCaption(String? value) => setField<String>('video_caption', value);

  int? get views => getField<int>('views');
  set views(int? value) => setField<int>('views', value);

  int? get likes => getField<int>('likes');
  set likes(int? value) => setField<int>('likes', value);

  int? get shares => getField<int>('shares');
  set shares(int? value) => setField<int>('shares', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);
}
