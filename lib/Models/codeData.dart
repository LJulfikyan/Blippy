import 'package:blippy_login/Models/rest_client.dart';
import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class CodeData {
  String? countryCode;
  String? countryCallingCode;
  String? ipAddress;


  CodeData(this.countryCode, this.countryCallingCode, this.ipAddress);

  factory CodeData.fromJson(Map<String, dynamic> srcJson) => _$CodeDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CodeDataToJson(this);

}



CodeData _$CodeDataFromJson(Map<String, dynamic> json) {
  return CodeData(
    json['countryCode'] as String?,
    json['countryCallingCode'] as String?,
    json['ipAddress'] as String?,
  );
}

Map<String, dynamic> _$CodeDataToJson(CodeData instance) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'countryCallingCode': instance.countryCallingCode,
  'ipAddress': instance.ipAddress,
};
