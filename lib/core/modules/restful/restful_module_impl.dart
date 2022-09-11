import 'dart:convert';

import 'package:movie_app/core/commons/network/response.dart';
import 'package:movie_app/core/commons/network/options.dart';
import 'package:movie_app/core/modules/restful/restful_module.dart';
import 'package:http/http.dart' as http;

class ResfulModuleImpl implements RestfulModule {
  final http.Client client = http.Client();
  @override
  // TODO: implement authToken
  Future<String?> get authToken => throw UnimplementedError();

  @override
  Future<CommonResponse<T>> delete<T>(String uri,
      {data, Map<String, dynamic>? query, CommonRequestOptions? options}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<CommonResponse<T>> get<T>(String uri,
      {Map<String, dynamic>? query, CommonRequestOptions? options}) async {
    // TODO: implement get
    final result = await client.get(
      Uri.parse(uri),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    return CommonResponse(
      body: jsonDecode(result.body),
      headers: result.headers,
      statusCode: result.statusCode,
      // statusMessage: result.statusText,
    );
  }

  @override
  Future<CommonResponse<T>> patch<T>(String uri, data,
      {Map<String, dynamic>? query, CommonRequestOptions? options}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<CommonResponse<T>> post<T>(String uri, data,
      {Map<String, dynamic>? query, CommonRequestOptions? options}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<CommonResponse<T>> put<T>(String uri,
      {data, Map<String, dynamic>? query, CommonRequestOptions? options}) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<void> removeAuthToken() {
    // TODO: implement removeAuthToken
    throw UnimplementedError();
  }

  @override
  Future<void> saveAuthToken(String authToken) {
    // TODO: implement saveAuthToken
    throw UnimplementedError();
  }
}
