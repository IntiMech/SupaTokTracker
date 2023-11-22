import '../database.dart';

class AccountsWithFollowingUnder100Table
    extends SupabaseTable<AccountsWithFollowingUnder100Row> {
  @override
  String get tableName => 'accounts_with_following_under_100';

  @override
  AccountsWithFollowingUnder100Row createRow(Map<String, dynamic> data) =>
      AccountsWithFollowingUnder100Row(data);
}

class AccountsWithFollowingUnder100Row extends SupabaseDataRow {
  AccountsWithFollowingUnder100Row(super.data);

  @override
  SupabaseTable get table => AccountsWithFollowingUnder100Table();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get tiktokUid => getField<String>('tiktok_uid');
  set tiktokUid(String? value) => setField<String>('tiktok_uid', value);

  String? get followingMaxid => getField<String>('following_maxid');
  set followingMaxid(String? value) =>
      setField<String>('following_maxid', value);

  int? get followingScraped => getField<int>('following_scraped');
  set followingScraped(int? value) => setField<int>('following_scraped', value);
}
