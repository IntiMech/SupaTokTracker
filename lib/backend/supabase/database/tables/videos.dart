import '../database.dart';

class VideosTable extends SupabaseTable<VideosRow> {
  @override
  String get tableName => 'videos';

  @override
  VideosRow createRow(Map<String, dynamic> data) => VideosRow(data);
}

class VideosRow extends SupabaseDataRow {
  VideosRow(super.data);

  @override
  SupabaseTable get table => VideosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get scrapedFrom => getField<int>('scraped_from');
  set scrapedFrom(int? value) => setField<int>('scraped_from', value);

  String? get videoCaption => getField<String>('video_caption');
  set videoCaption(String? value) => setField<String>('video_caption', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  int? get linkedSoundId => getField<int>('linked_sound_id');
  set linkedSoundId(int? value) => setField<int>('linked_sound_id', value);

  String? get videoUid => getField<String>('video_uid');
  set videoUid(String? value) => setField<String>('video_uid', value);

  DateTime? get postedDate => getField<DateTime>('posted_date');
  set postedDate(DateTime? value) => setField<DateTime>('posted_date', value);
}
