// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) userSignUp,
    required TResult Function(String email, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function(String email, String password, String username)
        sentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? userSignUp,
    TResult? Function(String email, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function(String email, String password, String username)? sentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? userSignUp,
    TResult Function(String email, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function(String email, String password, String username)? sentOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_sentOtp value) sentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_sentOtp value)? sentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_sentOtp value)? sentOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationEventCopyWith<$Res> {
  factory $UserAuthenticationEventCopyWith(UserAuthenticationEvent value,
          $Res Function(UserAuthenticationEvent) then) =
      _$UserAuthenticationEventCopyWithImpl<$Res, UserAuthenticationEvent>;
}

/// @nodoc
class _$UserAuthenticationEventCopyWithImpl<$Res,
        $Val extends UserAuthenticationEvent>
    implements $UserAuthenticationEventCopyWith<$Res> {
  _$UserAuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$userSignUpImplCopyWith<$Res> {
  factory _$$userSignUpImplCopyWith(
          _$userSignUpImpl value, $Res Function(_$userSignUpImpl) then) =
      __$$userSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$userSignUpImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$userSignUpImpl>
    implements _$$userSignUpImplCopyWith<$Res> {
  __$$userSignUpImplCopyWithImpl(
      _$userSignUpImpl _value, $Res Function(_$userSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$userSignUpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$userSignUpImpl implements _userSignUp {
  const _$userSignUpImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'UserAuthenticationEvent.userSignUp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userSignUpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userSignUpImplCopyWith<_$userSignUpImpl> get copyWith =>
      __$$userSignUpImplCopyWithImpl<_$userSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) userSignUp,
    required TResult Function(String email, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function(String email, String password, String username)
        sentOtp,
  }) {
    return userSignUp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? userSignUp,
    TResult? Function(String email, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function(String email, String password, String username)? sentOtp,
  }) {
    return userSignUp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? userSignUp,
    TResult Function(String email, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function(String email, String password, String username)? sentOtp,
    required TResult orElse(),
  }) {
    if (userSignUp != null) {
      return userSignUp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_sentOtp value) sentOtp,
  }) {
    return userSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_sentOtp value)? sentOtp,
  }) {
    return userSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_sentOtp value)? sentOtp,
    required TResult orElse(),
  }) {
    if (userSignUp != null) {
      return userSignUp(this);
    }
    return orElse();
  }
}

abstract class _userSignUp implements UserAuthenticationEvent {
  const factory _userSignUp({required final String otp}) = _$userSignUpImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$userSignUpImplCopyWith<_$userSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userLoginImplCopyWith<$Res> {
  factory _$$userLoginImplCopyWith(
          _$userLoginImpl value, $Res Function(_$userLoginImpl) then) =
      __$$userLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$userLoginImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$userLoginImpl>
    implements _$$userLoginImplCopyWith<$Res> {
  __$$userLoginImplCopyWithImpl(
      _$userLoginImpl _value, $Res Function(_$userLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$userLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$userLoginImpl implements _userLogin {
  const _$userLoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthenticationEvent.userLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userLoginImplCopyWith<_$userLoginImpl> get copyWith =>
      __$$userLoginImplCopyWithImpl<_$userLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) userSignUp,
    required TResult Function(String email, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function(String email, String password, String username)
        sentOtp,
  }) {
    return userLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? userSignUp,
    TResult? Function(String email, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function(String email, String password, String username)? sentOtp,
  }) {
    return userLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? userSignUp,
    TResult Function(String email, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function(String email, String password, String username)? sentOtp,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_sentOtp value) sentOtp,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_sentOtp value)? sentOtp,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_sentOtp value)? sentOtp,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _userLogin implements UserAuthenticationEvent {
  const factory _userLogin(
      {required final String email,
      required final String password}) = _$userLoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$userLoginImplCopyWith<_$userLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addUserImplCopyWith<$Res> {
  factory _$$addUserImplCopyWith(
          _$addUserImpl value, $Res Function(_$addUserImpl) then) =
      __$$addUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String userId});
}

/// @nodoc
class __$$addUserImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$addUserImpl>
    implements _$$addUserImplCopyWith<$Res> {
  __$$addUserImplCopyWithImpl(
      _$addUserImpl _value, $Res Function(_$addUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userId = null,
  }) {
    return _then(_$addUserImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addUserImpl implements _addUser {
  const _$addUserImpl({required this.userName, required this.userId});

  @override
  final String userName;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserAuthenticationEvent.addUser(userName: $userName, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addUserImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addUserImplCopyWith<_$addUserImpl> get copyWith =>
      __$$addUserImplCopyWithImpl<_$addUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) userSignUp,
    required TResult Function(String email, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function(String email, String password, String username)
        sentOtp,
  }) {
    return addUser(userName, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? userSignUp,
    TResult? Function(String email, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function(String email, String password, String username)? sentOtp,
  }) {
    return addUser?.call(userName, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? userSignUp,
    TResult Function(String email, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function(String email, String password, String username)? sentOtp,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(userName, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_sentOtp value) sentOtp,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_sentOtp value)? sentOtp,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_sentOtp value)? sentOtp,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _addUser implements UserAuthenticationEvent {
  const factory _addUser(
      {required final String userName,
      required final String userId}) = _$addUserImpl;

  String get userName;
  String get userId;
  @JsonKey(ignore: true)
  _$$addUserImplCopyWith<_$addUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$sentOtpImplCopyWith<$Res> {
  factory _$$sentOtpImplCopyWith(
          _$sentOtpImpl value, $Res Function(_$sentOtpImpl) then) =
      __$$sentOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username});
}

/// @nodoc
class __$$sentOtpImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$sentOtpImpl>
    implements _$$sentOtpImplCopyWith<$Res> {
  __$$sentOtpImplCopyWithImpl(
      _$sentOtpImpl _value, $Res Function(_$sentOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$sentOtpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$sentOtpImpl implements _sentOtp {
  const _$sentOtpImpl(
      {required this.email, required this.password, required this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'UserAuthenticationEvent.sentOtp(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sentOtpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sentOtpImplCopyWith<_$sentOtpImpl> get copyWith =>
      __$$sentOtpImplCopyWithImpl<_$sentOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) userSignUp,
    required TResult Function(String email, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function(String email, String password, String username)
        sentOtp,
  }) {
    return sentOtp(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? userSignUp,
    TResult? Function(String email, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function(String email, String password, String username)? sentOtp,
  }) {
    return sentOtp?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? userSignUp,
    TResult Function(String email, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function(String email, String password, String username)? sentOtp,
    required TResult orElse(),
  }) {
    if (sentOtp != null) {
      return sentOtp(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_sentOtp value) sentOtp,
  }) {
    return sentOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_sentOtp value)? sentOtp,
  }) {
    return sentOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_sentOtp value)? sentOtp,
    required TResult orElse(),
  }) {
    if (sentOtp != null) {
      return sentOtp(this);
    }
    return orElse();
  }
}

abstract class _sentOtp implements UserAuthenticationEvent {
  const factory _sentOtp(
      {required final String email,
      required final String password,
      required final String username}) = _$sentOtpImpl;

  String get email;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$$sentOtpImplCopyWith<_$sentOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAuthenticationState {
  StateResponse<String>? get signupState => throw _privateConstructorUsedError;
  StateResponse<String>? get sentOtp => throw _privateConstructorUsedError;
  UserAuthModel? get userAuthData => throw _privateConstructorUsedError;
  StateResponse<String>? get loginState => throw _privateConstructorUsedError;
  AuthSelection? get authSelection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthenticationStateCopyWith<UserAuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationStateCopyWith<$Res> {
  factory $UserAuthenticationStateCopyWith(UserAuthenticationState value,
          $Res Function(UserAuthenticationState) then) =
      _$UserAuthenticationStateCopyWithImpl<$Res, UserAuthenticationState>;
  @useResult
  $Res call(
      {StateResponse<String>? signupState,
      StateResponse<String>? sentOtp,
      UserAuthModel? userAuthData,
      StateResponse<String>? loginState,
      AuthSelection? authSelection});
}

/// @nodoc
class _$UserAuthenticationStateCopyWithImpl<$Res,
        $Val extends UserAuthenticationState>
    implements $UserAuthenticationStateCopyWith<$Res> {
  _$UserAuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupState = freezed,
    Object? sentOtp = freezed,
    Object? userAuthData = freezed,
    Object? loginState = freezed,
    Object? authSelection = freezed,
  }) {
    return _then(_value.copyWith(
      signupState: freezed == signupState
          ? _value.signupState
          : signupState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      sentOtp: freezed == sentOtp
          ? _value.sentOtp
          : sentOtp // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthModel?,
      loginState: freezed == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      authSelection: freezed == authSelection
          ? _value.authSelection
          : authSelection // ignore: cast_nullable_to_non_nullable
              as AuthSelection?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userAuthenticationStateImplCopyWith<$Res>
    implements $UserAuthenticationStateCopyWith<$Res> {
  factory _$$userAuthenticationStateImplCopyWith(
          _$userAuthenticationStateImpl value,
          $Res Function(_$userAuthenticationStateImpl) then) =
      __$$userAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateResponse<String>? signupState,
      StateResponse<String>? sentOtp,
      UserAuthModel? userAuthData,
      StateResponse<String>? loginState,
      AuthSelection? authSelection});
}

/// @nodoc
class __$$userAuthenticationStateImplCopyWithImpl<$Res>
    extends _$UserAuthenticationStateCopyWithImpl<$Res,
        _$userAuthenticationStateImpl>
    implements _$$userAuthenticationStateImplCopyWith<$Res> {
  __$$userAuthenticationStateImplCopyWithImpl(
      _$userAuthenticationStateImpl _value,
      $Res Function(_$userAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupState = freezed,
    Object? sentOtp = freezed,
    Object? userAuthData = freezed,
    Object? loginState = freezed,
    Object? authSelection = freezed,
  }) {
    return _then(_$userAuthenticationStateImpl(
      signupState: freezed == signupState
          ? _value.signupState
          : signupState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      sentOtp: freezed == sentOtp
          ? _value.sentOtp
          : sentOtp // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthModel?,
      loginState: freezed == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      authSelection: freezed == authSelection
          ? _value.authSelection
          : authSelection // ignore: cast_nullable_to_non_nullable
              as AuthSelection?,
    ));
  }
}

/// @nodoc

class _$userAuthenticationStateImpl implements userAuthenticationState {
  const _$userAuthenticationStateImpl(
      {required this.signupState,
      required this.sentOtp,
      required this.userAuthData,
      required this.loginState,
      required this.authSelection});

  @override
  final StateResponse<String>? signupState;
  @override
  final StateResponse<String>? sentOtp;
  @override
  final UserAuthModel? userAuthData;
  @override
  final StateResponse<String>? loginState;
  @override
  final AuthSelection? authSelection;

  @override
  String toString() {
    return 'UserAuthenticationState(signupState: $signupState, sentOtp: $sentOtp, userAuthData: $userAuthData, loginState: $loginState, authSelection: $authSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userAuthenticationStateImpl &&
            (identical(other.signupState, signupState) ||
                other.signupState == signupState) &&
            (identical(other.sentOtp, sentOtp) || other.sentOtp == sentOtp) &&
            const DeepCollectionEquality()
                .equals(other.userAuthData, userAuthData) &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState) &&
            const DeepCollectionEquality()
                .equals(other.authSelection, authSelection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      signupState,
      sentOtp,
      const DeepCollectionEquality().hash(userAuthData),
      loginState,
      const DeepCollectionEquality().hash(authSelection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userAuthenticationStateImplCopyWith<_$userAuthenticationStateImpl>
      get copyWith => __$$userAuthenticationStateImplCopyWithImpl<
          _$userAuthenticationStateImpl>(this, _$identity);
}

abstract class userAuthenticationState implements UserAuthenticationState {
  const factory userAuthenticationState(
          {required final StateResponse<String>? signupState,
          required final StateResponse<String>? sentOtp,
          required final UserAuthModel? userAuthData,
          required final StateResponse<String>? loginState,
          required final AuthSelection? authSelection}) =
      _$userAuthenticationStateImpl;

  @override
  StateResponse<String>? get signupState;
  @override
  StateResponse<String>? get sentOtp;
  @override
  UserAuthModel? get userAuthData;
  @override
  StateResponse<String>? get loginState;
  @override
  AuthSelection? get authSelection;
  @override
  @JsonKey(ignore: true)
  _$$userAuthenticationStateImplCopyWith<_$userAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
