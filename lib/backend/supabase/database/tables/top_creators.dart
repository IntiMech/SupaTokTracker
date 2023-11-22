import '../database.dart';

class TopCreatorsTable extends SupabaseTable<TopCreatorsRow> {
  @override
  String get tableName => 'top_creators';

  @override
  TopCreatorsRow createRow(Map<String, dynamic> data) => TopCreatorsRow(data);
}

class TopCreatorsRow extends SupabaseDataRow {
  TopCreatorsRow(super.data);

  @override
  SupabaseTable get table => TopCreatorsTable();

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get profilePictureUrl => getField<String>('profile_picture_url');
  set profilePictureUrl(String? value) =>
      setField<String>('profile_picture_url', value);

  int? get creatorId => getField<int>('creator_id');
  set creatorId(int? value) => setField<int>('creator_id', value);

  int? get totalViews => getField<int>('total_views');
  set totalViews(int? value) => setField<int>('total_views', value);

  int? get totalLikes => getField<int>('total_likes');
  set totalLikes(int? value) => setField<int>('total_likes', value);

  int? get totalShares => getField<int>('total_shares');
  set totalShares(int? value) => setField<int>('total_shares', value);

  int? get totalVideos => getField<int>('total_videos');
  set totalVideos(int? value) => setField<int>('total_videos', value);
}
