import 'package:blippy_login/Models/codeData.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../Base/app_config.dart';
import 'baseModel.dart';
import 'codeData.dart';
import 'dart:core';

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= AppConfig.baseUrl;
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<CodeData>?> getCountryCode() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<CodeData>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/api/v1/Users/GetCountryCode',
                queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : BaseResponse<CodeData>.fromJson(
        _result.data!,
    (json) => CodeData.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

@RestApi(baseUrl: AppConfig.baseServiceUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/v1/Users/GetCountryCode")
  Future<BaseResponse<CodeData>?> getCountryCode();
}


