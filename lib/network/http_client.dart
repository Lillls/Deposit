import 'dart:async';

import 'package:deposit/network/api_constants.dart';
import 'package:deposit/utils/log.dart';
import 'package:dio/dio.dart';

const TAG = "httpClient";
const String APPLICATION = 'application';
const String JSON = 'json';
const String UTF8 = 'utf-8';

Future<Map<String, dynamic>> _httpRequest(
    String method,
    String path, {
      dynamic body,
      Map<String, dynamic> params,
      Map<String, String> headers,
    }) async {
  assert(method != null);
  assert(path != null);

  Dio dio = new Dio();
  // 配置dio实例
  dio.options.baseUrl = ApiConstants.BASE_URL;
  dio.options.connectTimeout = 5000; //5s
  dio.options.receiveTimeout = 5000;
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions request) {
      Log.d("===Request Url===>${request.baseUrl}${request.path}");
      Log.d("===Request Data===>${request.data}");
      return request;
    },
    onResponse: (Response response) {
      Log.d("===Response Data=== ${response.data}");
      return response;
    },
    onError: (DioError e) {
      Log.d("===Error Message===>${e.message}");
      return e;
    },
  ));
  Response response;
  switch (method.toUpperCase()) {
    case 'GET':
      response = await dio.get(path, queryParameters: params);
      break;
    case 'POST':
      response = await dio.post(path, data: body);
      break;
  }

  return await response.data;
}

Future<Map<String, dynamic>> httpPost(
    url, {
      Map<String, dynamic> params,
      Map<String, String> headers,
      dynamic body,
    }) async {
  return _httpRequest(
    "POST",
    url,
    params: params,
    headers: headers,
    body: body,
  );
}

Future<Map<String, dynamic>> httpGet(
    url, {
      Map<String, dynamic> params,
      Map<String, String> headers,
    }) async {
  return _httpRequest(
    "GET",
    url,
    params: params,
    headers: headers,
  );
}
