import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

//the name of the company, select industry*, (username, password, address, profession)

part 'register_model.g.dart';

@JsonSerializable(nullable: false)
class RegisterModel {
  final String company_id;
  final String company_name;
  final String password;
  final String address;
  final String email;
  final String city;
  final String industry;

  RegisterModel(this.company_id, this.company_name, this.password, this.address,
      this.email, this.city, this.industry);

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
