import 'package:json_annotation/json_annotation.dart';

BaseResponse<T> _$BaseResponseFromJson<T>(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    ) {
  return BaseResponse<T>()
    ..data = _$nullableGenericFromJson(json['data'], fromJsonT)
    ..errors =
    (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..success = json['success'] as bool?;
}

Map<String, dynamic> _$BaseResponseToJson<T>(
    BaseResponse<T> instance,
    Object? Function(T value) toJsonT,
    ) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'errors': instance.errors,
      'success': instance.success,
    };

T? _$nullableGenericFromJson<T>(
    Object? input,
    T Function(Object? json) fromJson,
    ) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
    T? input,
    Object? Function(T value) toJson,
    ) =>
    input == null ? null : toJson(input);



@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {

  T? data;
  List<String>? errors;
  bool? success;

  BaseResponse();

  factory BaseResponse.fromJson(
      Map<String, dynamic> json,
      T Function(dynamic json) fromJsonT,
      ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}