// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_set_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileSetUpState {

 String get text; bool get validateAlways;
/// Create a copy of ProfileSetUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSetUpStateCopyWith<ProfileSetUpState> get copyWith => _$ProfileSetUpStateCopyWithImpl<ProfileSetUpState>(this as ProfileSetUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSetUpState&&(identical(other.text, text) || other.text == text)&&(identical(other.validateAlways, validateAlways) || other.validateAlways == validateAlways));
}


@override
int get hashCode => Object.hash(runtimeType,text,validateAlways);

@override
String toString() {
  return 'ProfileSetUpState(text: $text, validateAlways: $validateAlways)';
}


}

/// @nodoc
abstract mixin class $ProfileSetUpStateCopyWith<$Res>  {
  factory $ProfileSetUpStateCopyWith(ProfileSetUpState value, $Res Function(ProfileSetUpState) _then) = _$ProfileSetUpStateCopyWithImpl;
@useResult
$Res call({
 String text, bool validateAlways
});




}
/// @nodoc
class _$ProfileSetUpStateCopyWithImpl<$Res>
    implements $ProfileSetUpStateCopyWith<$Res> {
  _$ProfileSetUpStateCopyWithImpl(this._self, this._then);

  final ProfileSetUpState _self;
  final $Res Function(ProfileSetUpState) _then;

/// Create a copy of ProfileSetUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? validateAlways = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,validateAlways: null == validateAlways ? _self.validateAlways : validateAlways // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileSetUpState].
extension ProfileSetUpStatePatterns on ProfileSetUpState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _State value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _State value)  $default,){
final _that = this;
switch (_that) {
case _State():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _State value)?  $default,){
final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool validateAlways)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.text,_that.validateAlways);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool validateAlways)  $default,) {final _that = this;
switch (_that) {
case _State():
return $default(_that.text,_that.validateAlways);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool validateAlways)?  $default,) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.text,_that.validateAlways);case _:
  return null;

}
}

}

/// @nodoc


class _State implements ProfileSetUpState {
  const _State({required this.text, required this.validateAlways});
  

@override final  String text;
@override final  bool validateAlways;

/// Create a copy of ProfileSetUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.text, text) || other.text == text)&&(identical(other.validateAlways, validateAlways) || other.validateAlways == validateAlways));
}


@override
int get hashCode => Object.hash(runtimeType,text,validateAlways);

@override
String toString() {
  return 'ProfileSetUpState(text: $text, validateAlways: $validateAlways)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $ProfileSetUpStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 String text, bool validateAlways
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of ProfileSetUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? validateAlways = null,}) {
  return _then(_State(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,validateAlways: null == validateAlways ? _self.validateAlways : validateAlways // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
