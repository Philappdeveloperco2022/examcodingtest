import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = 'test2mail@email.com',
    String? password = 'testpassword',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'LOGIN',
      apiUrl:
          'https://gorest.co.in/public/v2/users?email=${email}&password=${password}&access-token=c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89',
      callType: ApiCallType.GET,
      headers: {
        'Bearer':
            'c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89',
      },
      params: {
        'email': "test2email@email.com",
        'password': "testpassword",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
        true,
      );
  static dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$[:].gender''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
        true,
      );
}

class RegistrationCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    int? age,
    String? addresss = '',
    String? gender = '',
    String? status = 'active',
    String? iconImageURL =
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/examcodexxxx-ekkm7g/assets/ecgarccbamws/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png',
    String? userRole = 'Admin',
    String? name = 'Master E',
  }) {
    final body = '''
{
  "email": "${email}",
  "name": "{'name':'${name}','age':'${age}','address':'${addresss}',password:’${password}, userIconURL:’${iconImageURL}’, userRole:’${userRole}’}",
  "gender": "${gender}",
  "status": "${status}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration',
      apiUrl: 'https://gorest.co.in/public/v2/graphql',
      callType: ApiCallType.POST,
      headers: {
        'Bearer':
            'c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: true,
    );
  }
}

class UpdateUsersCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    int? age,
    String? userRole = '',
    String? status = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateUsers',
      apiUrl: 'https://gorest.co.in/public/v2/graphql',
      callType: ApiCallType.POST,
      headers: {
        'Bearer':
            'c1f32d7ac4d0de04e7c4ba1b0a752a4512a866ae46e160ea3fdf0c0b39b8ca89',
      },
      params: {
        'id': id,
        'name': name,
        'age': age,
        'userRole': userRole,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class SocialPostCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'SocialPost',
      apiUrl: 'https://gorest.co.in/public/v2/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic poid(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic useripwhopost(dynamic response) => getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      );
  static dynamic posttitle(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic postbody(dynamic response) => getJsonField(
        response,
        r'''$[:].body''',
        true,
      );
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
