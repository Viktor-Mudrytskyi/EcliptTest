// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    UpdateUserRequest(
      id: json['id'] as String?,
      text: json['text'] as String?,
      completedOnboarding: json['completedOnboarding'] as bool?,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'text': ?instance.text,
      'completedOnboarding': ?instance.completedOnboarding,
    };
