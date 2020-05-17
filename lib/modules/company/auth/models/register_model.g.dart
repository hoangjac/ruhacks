// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return RegisterModel(
    json['company_id'] as String,
    json['company_name'] as String,
    json['password'] as String,
    json['address'] as String,
    json['email'] as String,
    json['city'] as String,
    json['industry'] as String,
  );
}

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'company_id': instance.company_id,
      'company_name': instance.company_name,
      'password': instance.password,
      'address': instance.address,
      'email': instance.email,
      'city': instance.city,
      'industry': instance.industry,
    };
