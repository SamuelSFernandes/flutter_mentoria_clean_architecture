import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/auth_response_entity.dart';
import '../user/user_model.dart';

part 'auth_response_model.g.dart';

@JsonSerializable(anyMap: true)
class AuthResponseModel extends AuthResponseEntity {
  @JsonKey(name: 'user')
  final UserModel userModel;

  AuthResponseModel({
    required this.userModel,
    required super.token,
  }) : super(user: userModel);

  factory AuthResponseModel.fromJson(Map json) =>
      _$AuthResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);
}
