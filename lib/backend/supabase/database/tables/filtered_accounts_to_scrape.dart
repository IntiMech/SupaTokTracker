import '../database.dart';

class FilteredAccountsToScrapeTable
    extends SupabaseTable<FilteredAccountsToScrapeRow> {
  @override
  String get tableName => 'filtered_accounts_to_scrape';

  @override
  FilteredAccountsToScrapeRow createRow(Map<String, dynamic> data) =>
      FilteredAccountsToScrapeRow(data);
}

class FilteredAccountsToScrapeRow extends SupabaseDataRow {
  FilteredAccountsToScrapeRow(super.data);

  @override
  SupabaseTable get table => FilteredAccountsToScrapeTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get tiktokUid => getField<String>('tiktok_uid');
  set tiktokUid(String? value) => setField<String>('tiktok_uid', value);

  int? get following => getField<int>('following');
  set following(int? value) => setField<int>('following', value);

  int? get followingScraped => getField<int>('following_scraped');
  set followingScraped(int? value) => setField<int>('following_scraped', value);

  String? get followingMaxid => getField<String>('following_maxid');
  set followingMaxid(String? value) =>
      setField<String>('following_maxid', value);
}
