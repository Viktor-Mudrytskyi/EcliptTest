// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  init,TResult Function( _ResolveState value)?  resolveState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when init != null:
return init(_that);case _ResolveState() when resolveState != null:
return resolveState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  init,required TResult Function( _ResolveState value)  resolveState,}){
final _that = this;
switch (_that) {
case _Started():
return init(_that);case _ResolveState():
return resolveState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  init,TResult? Function( _ResolveState value)?  resolveState,}){
final _that = this;
switch (_that) {
case _Started() when init != null:
return init(_that);case _ResolveState() when resolveState != null:
return resolveState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  resolveState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when init != null:
return init();case _ResolveState() when resolveState != null:
return resolveState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  resolveState,}) {final _that = this;
switch (_that) {
case _Started():
return init();case _ResolveState():
return resolveState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  resolveState,}) {final _that = this;
switch (_that) {
case _Started() when init != null:
return init();case _ResolveState() when resolveState != null:
return resolveState();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.init()';
}


}




/// @nodoc


class _ResolveState implements UserEvent {
  const _ResolveState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResolveState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.resolveState()';
}


}




/// @nodoc
mixin _$UserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Processing value)?  processing,TResult Function( _ProfileSetUp value)?  profileSetUp,TResult Function( _Home value)?  home,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Processing() when processing != null:
return processing(_that);case _ProfileSetUp() when profileSetUp != null:
return profileSetUp(_that);case _Home() when home != null:
return home(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Processing value)  processing,required TResult Function( _ProfileSetUp value)  profileSetUp,required TResult Function( _Home value)  home,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Processing():
return processing(_that);case _ProfileSetUp():
return profileSetUp(_that);case _Home():
return home(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Processing value)?  processing,TResult? Function( _ProfileSetUp value)?  profileSetUp,TResult? Function( _Home value)?  home,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Processing() when processing != null:
return processing(_that);case _ProfileSetUp() when profileSetUp != null:
return profileSetUp(_that);case _Home() when home != null:
return home(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  processing,TResult Function()?  profileSetUp,TResult Function( UserModel model)?  home,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Processing() when processing != null:
return processing();case _ProfileSetUp() when profileSetUp != null:
return profileSetUp();case _Home() when home != null:
return home(_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  processing,required TResult Function()  profileSetUp,required TResult Function( UserModel model)  home,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Processing():
return processing();case _ProfileSetUp():
return profileSetUp();case _Home():
return home(_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  processing,TResult? Function()?  profileSetUp,TResult? Function( UserModel model)?  home,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Processing() when processing != null:
return processing();case _ProfileSetUp() when profileSetUp != null:
return profileSetUp();case _Home() when home != null:
return home(_that.model);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.initial()';
}


}




/// @nodoc


class _Processing implements UserState {
  const _Processing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Processing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.processing()';
}


}




/// @nodoc


class _ProfileSetUp implements UserState {
  const _ProfileSetUp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSetUp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.profileSetUp()';
}


}




/// @nodoc


class _Home implements UserState {
  const _Home(this.model);
  

 final  UserModel model;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeCopyWith<_Home> get copyWith => __$HomeCopyWithImpl<_Home>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Home&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'UserState.home(model: $model)';
}


}

/// @nodoc
abstract mixin class _$HomeCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) _then) = __$HomeCopyWithImpl;
@useResult
$Res call({
 UserModel model
});


$UserModelCopyWith<$Res> get model;

}
/// @nodoc
class __$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(this._self, this._then);

  final _Home _self;
  final $Res Function(_Home) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(_Home(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get model {
  
  return $UserModelCopyWith<$Res>(_self.model, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

// dart format on
