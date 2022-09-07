import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/login_entity.dart';

part 'login_model.g.dart';

@JsonSerializable(anyMap: true)
class LoginModel extends LoginEntity {
  LoginModel({
    required super.email,
    required super.password,
  });

  factory LoginModel.fromJson(Map json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
