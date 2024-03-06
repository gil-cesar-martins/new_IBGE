import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SetDadosCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    int? idade,
    int? filhos,
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "$nome",
  "idade": $idade,
  "filhos": $filhos
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'setDados',
      apiUrl: 'https://urokgohxewwgvbugdynj.supabase.co/rest/v1/tbIBGE',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVyb2tnb2h4ZXd3Z3ZidWdkeW5qIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk2NjEzMjEsImV4cCI6MjAyNTIzNzMyMX0.O4Rno271nXT73mWUEaJCSKsp7GuOS1khjoaYMoTqPPE',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDadosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDados',
      apiUrl:
          'https://urokgohxewwgvbugdynj.supabase.co/rest/v1/tbIBGE?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVyb2tnb2h4ZXd3Z3ZidWdkeW5qIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk2NjEzMjEsImV4cCI6MjAyNTIzNzMyMX0.O4Rno271nXT73mWUEaJCSKsp7GuOS1khjoaYMoTqPPE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idade(dynamic response) => (getJsonField(
        response,
        r'''$[:].idade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? filhos(dynamic response) => (getJsonField(
        response,
        r'''$[:].filhos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
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
