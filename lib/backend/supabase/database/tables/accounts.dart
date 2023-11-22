import '../database.dart';

class AccountsTable extends SupabaseTable<AccountsRow> {
  @override
  String get tableName => 'accounts';

  @override
  AccountsRow createRow(Map<String, dynamic> data) => AccountsRow(data);
}

class AccountsRow extends SupabaseDataRow {
  AccountsRow(super.data);

  @override
  SupabaseTable get table => AccountsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get profilePictureUrl => getField<String>('profile_picture_url');
  set profilePictureUrl(String? value) =>
      setField<String>('profile_picture_url', value);

  String? get tiktokUid => getField<String>('tiktok_uid');
  set tiktokUid(String? value) => setField<String>('tiktok_uid', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  DateTime? get lastFeedScrape => getField<DateTime>('last_feed_scrape');
  set lastFeedScrape(DateTime? value) =>
      setField<DateTime>('last_feed_scrape', value);

  int? get followersScraped => getField<int>('followers_scraped');
  set followersScraped(int? value) => setField<int>('followers_scraped', value);

  int? get followingScraped => getField<int>('following_scraped');
  set followingScraped(int? value) => setField<int>('following_scraped', value);

  String? get followingMaxid => getField<String>('following_maxid');
  set followingMaxid(String? value) =>
      setField<String>('following_maxid', value);

  String? get followersMaxid => getField<String>('followers_maxid');
  set followersMaxid(String? value) =>
      setField<String>('followers_maxid', value);

  bool? get feedScrapeError => getField<bool>('feed_scrape_error');
  set feedScrapeError(bool? value) =>
      setField<bool>('feed_scrape_error', value);

  bool? get followingScrapeError => getField<bool>('following_scrape_error');
  set followingScrapeError(bool? value) =>
      setField<bool>('following_scrape_error', value);

  DateTime? get lastProfileScrape => getField<DateTime>('last_profile_scrape');
  set lastProfileScrape(DateTime? value) =>
      setField<DateTime>('last_profile_scrape', value);

  bool? get profileScrapeError => getField<bool>('profile_scrape_error');
  set profileScrapeError(bool? value) =>
      setField<bool>('profile_scrape_error', value);
}
