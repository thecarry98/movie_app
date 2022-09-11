import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../commons/network/response.dart';

final http.Client client = http.Client();

class DataSource {
  DataSource._();

  Future<CommonResponse<T>> getAPI<T>(String url, String id) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    return CommonResponse(
      body: jsonDecode(response.body),
      statusCode: response.statusCode,
    );
  }
}
