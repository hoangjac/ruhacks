import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

//the name of the company, select industry*, (username, password, address, profession)
@JsonSerializable(nullable: false)
class RegisterModel {
  final String nameOfCompany;
  final String industry;
  final String username;
  final String password;
  final String address;
  final String profession;

  RegisterModel(
      {this.nameOfCompany,
      this.industry,
      this.username,
      this.password,
      this.address,
      this.profession});

/*
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
*/
}
