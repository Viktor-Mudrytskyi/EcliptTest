import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

@freezed
@JsonSerializable(includeIfNull: false)
class UpdateUserRequest with _$UpdateUserRequest {
  UpdateUserRequest({this.id, this.text, this.completedOnboarding});

  @override
  final String? id;
  @override
  final String? text;
  @override
  final bool? completedOnboarding;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  Map<String, Object?> toJson() => _$UpdateUserRequestToJson(this);
}
