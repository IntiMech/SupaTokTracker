import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Top Videos Group Code

class TopVideosGroup {
  static String baseUrl =
      'https://aedtbcmaktyivxlqxjvx.supabase.co/rest/v1/trending_videos?select=*';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY5OTQyOTYwMSwiZXhwIjoyMDE1MDA1NjAxfQ.RjCI9UVJSCrc14QmX49ngjkP63xWnQv_D6yDgSBdS_g',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY5OTQyOTYwMSwiZXhwIjoyMDE1MDA1NjAxfQ.RjCI9UVJSCrc14QmX49ngjkP63xWnQv_D6yDgSBdS_g',
  };
}

/// End Top Videos Group Code

class TopCreatorsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Top Creators',
      apiUrl:
          'https://aedtbcmaktyivxlqxjvx.supabase.co/rest/v1/top_creators?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic creatorName(dynamic response) => getJsonField(
        response,
        r'''$[:].account_name''',
        true,
      );
  static dynamic creatorTotalViews(dynamic response) => getJsonField(
        response,
        r'''$[:].total_views''',
        true,
      );
  static dynamic creatorTotalLikes(dynamic response) => getJsonField(
        response,
        r'''$[:].total_likes''',
        true,
      );
  static dynamic creatorTotalShares(dynamic response) => getJsonField(
        response,
        r'''$[:].total_shares''',
        true,
      );
  static dynamic creatorTotalVides(dynamic response) => getJsonField(
        response,
        r'''$[:].total_videos''',
        true,
      );
  static dynamic pfp(dynamic response) => getJsonField(
        response,
        r'''$[:].profile_picture_url''',
        true,
      );
}

class TrendingVideosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Trending Videos',
      apiUrl:
          'https://aedtbcmaktyivxlqxjvx.supabase.co/rest/v1/trending_videos?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tikTokCaption(dynamic response) => getJsonField(
        response,
        r'''$[:].video_caption''',
        true,
      );
  static dynamic tikTokViews(dynamic response) => getJsonField(
        response,
        r'''$[:].views''',
        true,
      );
  static dynamic tikTokLikes(dynamic response) => getJsonField(
        response,
        r'''$[:].likes''',
        true,
      );
  static dynamic tikTokShares(dynamic response) => getJsonField(
        response,
        r'''$[:].shares''',
        true,
      );
  static dynamic creatorName(dynamic response) => getJsonField(
        response,
        r'''$[:].account_name''',
        true,
      );
  static dynamic tikTokURL(dynamic response) => getJsonField(
        response,
        r'''$[:].video_url''',
        true,
      );
}

class CreatorPerformaceSnapshotCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Creator Performace Snapshot',
      apiUrl:
          'https://aedtbcmaktyivxlqxjvx.supabase.co/rest/v1/performance_analysis_by_period?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic creator(dynamic response) => getJsonField(
        response,
        r'''$[:].account_name''',
        true,
      );
  static dynamic creatorPFP(dynamic response) => getJsonField(
        response,
        r'''$[:].profile_picture_url''',
        true,
      );
  static dynamic creatorWeekViews(dynamic response) => getJsonField(
        response,
        r'''$[:].weekly_views''',
        true,
      );
  static dynamic creatorMonthViews(dynamic response) => getJsonField(
        response,
        r'''$[:].month''',
        true,
      );
  static dynamic creatorWeekLikes(dynamic response) => getJsonField(
        response,
        r'''$[:].weekly_likes''',
        true,
      );
  static dynamic creatorNewFollowersWeek(dynamic response) => getJsonField(
        response,
        r'''$[:].new_followers_last_7_days''',
        true,
      );
}

class CreatorDashboardCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Creator Dashboard',
      apiUrl:
          'https://aedtbcmaktyivxlqxjvx.supabase.co/rest/v1/creator_dashboard?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic creatorUsername(dynamic response) => getJsonField(
        response,
        r'''$[:].account_name''',
        true,
      );
  static dynamic creatorTotalViews(dynamic response) => getJsonField(
        response,
        r'''$[:].total_views''',
        true,
      );
  static dynamic creatorAvgLikes(dynamic response) => getJsonField(
        response,
        r'''$[:].average_likes''',
        true,
      );
  static dynamic creatorTotalVids(dynamic response) => getJsonField(
        response,
        r'''$[:].total_videos''',
        true,
      );
}

class CreatorAverageViewsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Creator Average Views',
      apiUrl:
          'https://aedtbcmaktyivxlqxjvx.supabase.co/rest/v1/average_views?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
