import '../database.dart';

class FollowersTable extends SupabaseTable<FollowersRow> {
  @override
  String get tableName => 'followers';

  @override
  FollowersRow createRow(Map<String, dynamic> data) => FollowersRow(data);
}

class FollowersRow extends SupabaseDataRow {
  FollowersRow(super.data);

  @override
  SupabaseTable get table => FollowersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get accountId => getField<int>('account_id')!;
  set accountId(int value) => setField<int>('account_id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);

  int? get following => getField<int>('following');
  set following(int? value) => setField<int>('following', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get tiktokUid => getField<String>('tiktok_uid');
  set tiktokUid(String? value) => setField<String>('tiktok_uid', value);

  int? get postCount => getField<int>('post_count');
  set postCount(int? value) => setField<int>('post_count', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get verified => getField<String>('verified');
  set verified(String? value) => setField<String>('verified', value);

  String? get instaId => getField<String>('insta_id');
  set instaId(String? value) => setField<String>('insta_id', value);
}
