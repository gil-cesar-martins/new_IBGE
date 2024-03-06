import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://urokgohxewwgvbugdynj.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVyb2tnb2h4ZXd3Z3ZidWdkeW5qIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk2NjEzMjEsImV4cCI6MjAyNTIzNzMyMX0.O4Rno271nXT73mWUEaJCSKsp7GuOS1khjoaYMoTqPPE';

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
