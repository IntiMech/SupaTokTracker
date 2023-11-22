import '../database.dart';

class AccountsStatsTable extends SupabaseTable<AccountsStatsRow> {
  @override
  String get tableName => 'accounts_stats';

  @override
  AccountsStatsRow createRow(Map<String, dynamic> data) =>
      AccountsStatsRow(data);
}

class AccountsStatsRow extends SupabaseDataRow {
  AccountsStatsRow(super.data);

  @override
  SupabaseTable get table => AccountsStatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get accountId => getField<int>('account_id')!;
  set accountId(int value) => setField<int>('account_id', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);

  int? get following => getField<int>('following');
  set following(int? value) => setField<int>('following', value);

  int? get postCount => getField<int>('post_count');
  set postCount(int? value) => setField<int>('post_count', value);

  DateTime? get statsDate => getField<DateTime>('stats_date');
  set statsDate(DateTime? value) => setField<DateTime>('stats_date', value);
}
