import '../database.dart';

class CreatorsTopVideosTable extends SupabaseTable<CreatorsTopVideosRow> {
  @override
  String get tableName => 'creators_top_videos';

  @override
  CreatorsTopVideosRow createRow(Map<String, dynamic> data) =>
      CreatorsTopVideosRow(data);
}

class CreatorsTopVideosRow extends SupabaseDataRow {
  CreatorsTopVideosRow(super.data);

  @override
  SupabaseTable get table => CreatorsTopVideosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get videoCaption => getField<String>('video_caption');
  set videoCaption(String? value) => setField<String>('video_caption', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  DateTime? get postedDate => getField<DateTime>('posted_date');
  set postedDate(DateTime? value) => setField<DateTime>('posted_date', value);

  int? get views => getField<int>('views');
  set views(int? value) => setField<int>('views', value);

  int? get comments => getField<int>('comments');
  set comments(int? value) => setField<int>('comments', value);

  int? get likes => getField<int>('likes');
  set likes(int? value) => setField<int>('likes', value);

  double? get engagementRate => getField<double>('engagement_rate');
  set engagementRate(double? value) =>
      setField<double>('engagement_rate', value);
}
