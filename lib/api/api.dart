import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'api_interceptor.dart';

class Api {
  static const baseUrl = 'https://pokeapi.co/api/v2/';

  Client client = InterceptedClient.build(
    interceptors: [ApiInterceptor()],
    requestTimeout: const Duration(seconds: 5),
  );

  Future<Response> get(String endpoint) async {
    return await client.get(Uri.parse(baseUrl + endpoint)).catchError((e) {
      debugPrint(e);
    });
  }
}
