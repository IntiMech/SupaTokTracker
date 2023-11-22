import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://aedtbcmaktyivxlqxjvx.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZHRiY21ha3R5aXZ4bHF4anZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk0Mjk2MDEsImV4cCI6MjAxNTAwNTYwMX0.Yr9RSsT39CN92rN00xzd1J8B4WXJTS1MCrfl7eUD_g8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
