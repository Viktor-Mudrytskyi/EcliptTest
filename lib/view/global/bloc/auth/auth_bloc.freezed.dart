// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SignIn value)?  signIn,TResult Function( _SignUp value)?  signUp,TResult Function( _Resolve value)?  resolveState,TResult Function( _Init value)?  init,TResult Function( _SignOut value)?  signOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that);case _SignUp() when signUp != null:
return signUp(_that);case _Resolve() when resolveState != null:
return resolveState(_that);case _Init() when init != null:
return init(_that);case _SignOut() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SignIn value)  signIn,required TResult Function( _SignUp value)  signUp,required TResult Function( _Resolve value)  resolveState,required TResult Function( _Init value)  init,required TResult Function( _SignOut value)  signOut,}){
final _that = this;
switch (_that) {
case _SignIn():
return signIn(_that);case _SignUp():
return signUp(_that);case _Resolve():
return resolveState(_that);case _Init():
return init(_that);case _SignOut():
return signOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SignIn value)?  signIn,TResult? Function( _SignUp value)?  signUp,TResult? Function( _Resolve value)?  resolveState,TResult? Function( _Init value)?  init,TResult? Function( _SignOut value)?  signOut,}){
final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that);case _SignUp() when signUp != null:
return signUp(_that);case _Resolve() when resolveState != null:
return resolveState(_that);case _Init() when init != null:
return init(_that);case _SignOut() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  signIn,TResult Function( String email,  String password)?  signUp,TResult Function( UserAuthStatus status,  String? password)?  resolveState,TResult Function()?  init,TResult Function()?  signOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that.email,_that.password);case _SignUp() when signUp != null:
return signUp(_that.email,_that.password);case _Resolve() when resolveState != null:
return resolveState(_that.status,_that.password);case _Init() when init != null:
return init();case _SignOut() when signOut != null:
return signOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  signIn,required TResult Function( String email,  String password)  signUp,required TResult Function( UserAuthStatus status,  String? password)  resolveState,required TResult Function()  init,required TResult Function()  signOut,}) {final _that = this;
switch (_that) {
case _SignIn():
return signIn(_that.email,_that.password);case _SignUp():
return signUp(_that.email,_that.password);case _Resolve():
return resolveState(_that.status,_that.password);case _Init():
return init();case _SignOut():
return signOut();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  signIn,TResult? Function( String email,  String password)?  signUp,TResult? Function( UserAuthStatus status,  String? password)?  resolveState,TResult? Function()?  init,TResult? Function()?  signOut,}) {final _that = this;
switch (_that) {
case _SignIn() when signIn != null:
return signIn(_that.email,_that.password);case _SignUp() when signUp != null:
return signUp(_that.email,_that.password);case _Resolve() when resolveState != null:
return resolveState(_that.status,_that.password);case _Init() when init != null:
return init();case _SignOut() when signOut != null:
return signOut();case _:
  return null;

}
}

}

/// @nodoc


class _SignIn implements AuthEvent {
  const _SignIn({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInCopyWith<_SignIn> get copyWith => __$SignInCopyWithImpl<_SignIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignIn&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signIn(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignInCopyWith(_SignIn value, $Res Function(_SignIn) _then) = __$SignInCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignInCopyWithImpl<$Res>
    implements _$SignInCopyWith<$Res> {
  __$SignInCopyWithImpl(this._self, this._then);

  final _SignIn _self;
  final $Res Function(_SignIn) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignIn(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SignUp implements AuthEvent {
  const _SignUp({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpCopyWith<_SignUp> get copyWith => __$SignUpCopyWithImpl<_SignUp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUp&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signUp(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignUpCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignUpCopyWith(_SignUp value, $Res Function(_SignUp) _then) = __$SignUpCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignUpCopyWithImpl<$Res>
    implements _$SignUpCopyWith<$Res> {
  __$SignUpCopyWithImpl(this._self, this._then);

  final _SignUp _self;
  final $Res Function(_SignUp) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignUp(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Resolve implements AuthEvent {
  const _Resolve({required this.status, this.password});
  

 final  UserAuthStatus status;
 final  String? password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResolveCopyWith<_Resolve> get copyWith => __$ResolveCopyWithImpl<_Resolve>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resolve&&(identical(other.status, status) || other.status == status)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,status,password);

@override
String toString() {
  return 'AuthEvent.resolveState(status: $status, password: $password)';
}


}

/// @nodoc
abstract mixin class _$ResolveCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ResolveCopyWith(_Resolve value, $Res Function(_Resolve) _then) = __$ResolveCopyWithImpl;
@useResult
$Res call({
 UserAuthStatus status, String? password
});




}
/// @nodoc
class __$ResolveCopyWithImpl<$Res>
    implements _$ResolveCopyWith<$Res> {
  __$ResolveCopyWithImpl(this._self, this._then);

  final _Resolve _self;
  final $Res Function(_Resolve) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,Object? password = freezed,}) {
  return _then(_Resolve(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserAuthStatus,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Init implements AuthEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.init()';
}


}




/// @nodoc


class _SignOut implements AuthEvent {
  const _SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOut()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoggedIn value)?  loggedIn,TResult Function( _LoggedOut value)?  loggedOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoggedIn() when loggedIn != null:
return loggedIn(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoggedIn value)  loggedIn,required TResult Function( _LoggedOut value)  loggedOut,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoggedIn():
return loggedIn(_that);case _LoggedOut():
return loggedOut(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoggedIn value)?  loggedIn,TResult? Function( _LoggedOut value)?  loggedOut,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoggedIn() when loggedIn != null:
return loggedIn(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( User fbUser)?  loggedIn,TResult Function()?  loggedOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoggedIn() when loggedIn != null:
return loggedIn(_that.fbUser);case _LoggedOut() when loggedOut != null:
return loggedOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( User fbUser)  loggedIn,required TResult Function()  loggedOut,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoggedIn():
return loggedIn(_that.fbUser);case _LoggedOut():
return loggedOut();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( User fbUser)?  loggedIn,TResult? Function()?  loggedOut,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoggedIn() when loggedIn != null:
return loggedIn(_that.fbUser);case _LoggedOut() when loggedOut != null:
return loggedOut();case _:
  return null;

}
}

}

/// @nodoc


class _Initial extends AuthState {
  const _Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _LoggedIn extends AuthState {
  const _LoggedIn({required this.fbUser}): super._();
  

 final  User fbUser;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoggedInCopyWith<_LoggedIn> get copyWith => __$LoggedInCopyWithImpl<_LoggedIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedIn&&(identical(other.fbUser, fbUser) || other.fbUser == fbUser));
}


@override
int get hashCode => Object.hash(runtimeType,fbUser);

@override
String toString() {
  return 'AuthState.loggedIn(fbUser: $fbUser)';
}


}

/// @nodoc
abstract mixin class _$LoggedInCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) _then) = __$LoggedInCopyWithImpl;
@useResult
$Res call({
 User fbUser
});




}
/// @nodoc
class __$LoggedInCopyWithImpl<$Res>
    implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(this._self, this._then);

  final _LoggedIn _self;
  final $Res Function(_LoggedIn) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fbUser = null,}) {
  return _then(_LoggedIn(
fbUser: null == fbUser ? _self.fbUser : fbUser // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class _LoggedOut extends AuthState {
  const _LoggedOut(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loggedOut()';
}


}




// dart format on
