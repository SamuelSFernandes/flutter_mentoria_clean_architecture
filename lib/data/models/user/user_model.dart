import 'package:clean_arch_tdd/domain/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(anyMap: true)
class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.birthDay,
  });

  factory UserModel.fromJson(Map json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
