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
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
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
  $Res call({String otp, UserAuthModel userAuthData});
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
    Object? userAuthData = null,
  }) {
    return _then(_$userSignUpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userAuthData: null == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthModel,
    ));
  }
}

/// @nodoc

class _$userSignUpImpl implements _userSignUp {
  const _$userSignUpImpl({required this.otp, required this.userAuthData});

  @override
  final String otp;
  @override
  final UserAuthModel userAuthData;

  @override
  String toString() {
    return 'UserAuthenticationEvent.userSignUp(otp: $otp, userAuthData: $userAuthData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userSignUpImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userAuthData, userAuthData) ||
                other.userAuthData == userAuthData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, userAuthData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userSignUpImplCopyWith<_$userSignUpImpl> get copyWith =>
      __$$userSignUpImplCopyWithImpl<_$userSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return userSignUp(otp, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return userSignUp?.call(otp, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) {
    if (userSignUp != null) {
      return userSignUp(otp, userAuthData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return userSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return userSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
    required TResult orElse(),
  }) {
    if (userSignUp != null) {
      return userSignUp(this);
    }
    return orElse();
  }
}

abstract class _userSignUp implements UserAuthenticationEvent {
  const factory _userSignUp(
      {required final String otp,
      required final UserAuthModel userAuthData}) = _$userSignUpImpl;

  String get otp;
  UserAuthModel get userAuthData;
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
  $Res call({String userName, String password});
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
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$userLoginImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
  const _$userLoginImpl({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthenticationEvent.userLogin(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userLoginImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userLoginImplCopyWith<_$userLoginImpl> get copyWith =>
      __$$userLoginImplCopyWithImpl<_$userLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return userLogin(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return userLogin?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
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
      {required final String userName,
      required final String password}) = _$userLoginImpl;

  String get userName;
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
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return addUser(userName, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return addUser?.call(userName, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
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
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
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
abstract class _$$userLogoutImplCopyWith<$Res> {
  factory _$$userLogoutImplCopyWith(
          _$userLogoutImpl value, $Res Function(_$userLogoutImpl) then) =
      __$$userLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userLogoutImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$userLogoutImpl>
    implements _$$userLogoutImplCopyWith<$Res> {
  __$$userLogoutImplCopyWithImpl(
      _$userLogoutImpl _value, $Res Function(_$userLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$userLogoutImpl implements _userLogout {
  const _$userLogoutImpl();

  @override
  String toString() {
    return 'UserAuthenticationEvent.userLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class _userLogout implements UserAuthenticationEvent {
  const factory _userLogout() = _$userLogoutImpl;
}

/// @nodoc
abstract class _$$sentOtpImplCopyWith<$Res> {
  factory _$$sentOtpImplCopyWith(
          _$sentOtpImpl value, $Res Function(_$sentOtpImpl) then) =
      __$$sentOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TextEditingController> controllers});
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
    Object? controllers = null,
  }) {
    return _then(_$sentOtpImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
    ));
  }
}

/// @nodoc

class _$sentOtpImpl implements _sentOtp {
  const _$sentOtpImpl({required final List<TextEditingController> controllers})
      : _controllers = controllers;

  final List<TextEditingController> _controllers;
  @override
  List<TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  String toString() {
    return 'UserAuthenticationEvent.sentOtp(controllers: $controllers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sentOtpImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_controllers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sentOtpImplCopyWith<_$sentOtpImpl> get copyWith =>
      __$$sentOtpImplCopyWithImpl<_$sentOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return sentOtp(controllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return sentOtp?.call(controllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) {
    if (sentOtp != null) {
      return sentOtp(controllers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return sentOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return sentOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
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
      {required final List<TextEditingController> controllers}) = _$sentOtpImpl;

  List<TextEditingController> get controllers;
  @JsonKey(ignore: true)
  _$$sentOtpImplCopyWith<_$sentOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkUserLogedImplCopyWith<$Res> {
  factory _$$checkUserLogedImplCopyWith(_$checkUserLogedImpl value,
          $Res Function(_$checkUserLogedImpl) then) =
      __$$checkUserLogedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkUserLogedImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$checkUserLogedImpl>
    implements _$$checkUserLogedImplCopyWith<$Res> {
  __$$checkUserLogedImplCopyWithImpl(
      _$checkUserLogedImpl _value, $Res Function(_$checkUserLogedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkUserLogedImpl implements _checkUserLoged {
  const _$checkUserLogedImpl();

  @override
  String toString() {
    return 'UserAuthenticationEvent.checkUserLoged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkUserLogedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return checkUserLoged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return checkUserLoged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) {
    if (checkUserLoged != null) {
      return checkUserLoged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return checkUserLoged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return checkUserLoged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
    required TResult orElse(),
  }) {
    if (checkUserLoged != null) {
      return checkUserLoged(this);
    }
    return orElse();
  }
}

abstract class _checkUserLoged implements UserAuthenticationEvent {
  const factory _checkUserLoged() = _$checkUserLogedImpl;
}

/// @nodoc
abstract class _$$authSelectionImplCopyWith<$Res> {
  factory _$$authSelectionImplCopyWith(
          _$authSelectionImpl value, $Res Function(_$authSelectionImpl) then) =
      __$$authSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TextEditingController> controllers, AuthSelection selection});
}

/// @nodoc
class __$$authSelectionImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$authSelectionImpl>
    implements _$$authSelectionImplCopyWith<$Res> {
  __$$authSelectionImplCopyWithImpl(
      _$authSelectionImpl _value, $Res Function(_$authSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
    Object? selection = null,
  }) {
    return _then(_$authSelectionImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as AuthSelection,
    ));
  }
}

/// @nodoc

class _$authSelectionImpl implements _authSelection {
  const _$authSelectionImpl(
      {required final List<TextEditingController> controllers,
      required this.selection})
      : _controllers = controllers;

  final List<TextEditingController> _controllers;
  @override
  List<TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final AuthSelection selection;

  @override
  String toString() {
    return 'UserAuthenticationEvent.authSelection(controllers: $controllers, selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$authSelectionImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.selection, selection) ||
                other.selection == selection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_controllers), selection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$authSelectionImplCopyWith<_$authSelectionImpl> get copyWith =>
      __$$authSelectionImplCopyWithImpl<_$authSelectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, UserAuthModel userAuthData)
        userSignUp,
    required TResult Function(String userName, String password) userLogin,
    required TResult Function(String userName, String userId) addUser,
    required TResult Function() userLogout,
    required TResult Function(List<TextEditingController> controllers) sentOtp,
    required TResult Function() checkUserLoged,
    required TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)
        authSelection,
  }) {
    return authSelection(controllers, selection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult? Function(String userName, String password)? userLogin,
    TResult? Function(String userName, String userId)? addUser,
    TResult? Function()? userLogout,
    TResult? Function(List<TextEditingController> controllers)? sentOtp,
    TResult? Function()? checkUserLoged,
    TResult? Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
  }) {
    return authSelection?.call(controllers, selection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, UserAuthModel userAuthData)? userSignUp,
    TResult Function(String userName, String password)? userLogin,
    TResult Function(String userName, String userId)? addUser,
    TResult Function()? userLogout,
    TResult Function(List<TextEditingController> controllers)? sentOtp,
    TResult Function()? checkUserLoged,
    TResult Function(
            List<TextEditingController> controllers, AuthSelection selection)?
        authSelection,
    required TResult orElse(),
  }) {
    if (authSelection != null) {
      return authSelection(controllers, selection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userSignUp value) userSignUp,
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_addUser value) addUser,
    required TResult Function(_userLogout value) userLogout,
    required TResult Function(_sentOtp value) sentOtp,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_authSelection value) authSelection,
  }) {
    return authSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userSignUp value)? userSignUp,
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_userLogout value)? userLogout,
    TResult? Function(_sentOtp value)? sentOtp,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_authSelection value)? authSelection,
  }) {
    return authSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userSignUp value)? userSignUp,
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_addUser value)? addUser,
    TResult Function(_userLogout value)? userLogout,
    TResult Function(_sentOtp value)? sentOtp,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_authSelection value)? authSelection,
    required TResult orElse(),
  }) {
    if (authSelection != null) {
      return authSelection(this);
    }
    return orElse();
  }
}

abstract class _authSelection implements UserAuthenticationEvent {
  const factory _authSelection(
      {required final List<TextEditingController> controllers,
      required final AuthSelection selection}) = _$authSelectionImpl;

  List<TextEditingController> get controllers;
  AuthSelection get selection;
  @JsonKey(ignore: true)
  _$$authSelectionImplCopyWith<_$authSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAuthenticationState {
  StateResponse<String>? get signupState => throw _privateConstructorUsedError;
  StateResponse<String>? get sentOtp => throw _privateConstructorUsedError;
  StateResponse<String?>? get logedUser => throw _privateConstructorUsedError;
  UserAuthModel? get userAuthData => throw _privateConstructorUsedError;
  StateResponse<String>? get loginState => throw _privateConstructorUsedError;
  StateResponse<dynamic> get userLogout => throw _privateConstructorUsedError;
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
      StateResponse<String?>? logedUser,
      UserAuthModel? userAuthData,
      StateResponse<String>? loginState,
      StateResponse<dynamic> userLogout,
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
    Object? logedUser = freezed,
    Object? userAuthData = freezed,
    Object? loginState = freezed,
    Object? userLogout = null,
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
      logedUser: freezed == logedUser
          ? _value.logedUser
          : logedUser // ignore: cast_nullable_to_non_nullable
              as StateResponse<String?>?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthModel?,
      loginState: freezed == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      userLogout: null == userLogout
          ? _value.userLogout
          : userLogout // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
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
      StateResponse<String?>? logedUser,
      UserAuthModel? userAuthData,
      StateResponse<String>? loginState,
      StateResponse<dynamic> userLogout,
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
    Object? logedUser = freezed,
    Object? userAuthData = freezed,
    Object? loginState = freezed,
    Object? userLogout = null,
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
      logedUser: freezed == logedUser
          ? _value.logedUser
          : logedUser // ignore: cast_nullable_to_non_nullable
              as StateResponse<String?>?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthModel?,
      loginState: freezed == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      userLogout: null == userLogout
          ? _value.userLogout
          : userLogout // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
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
      required this.logedUser,
      required this.userAuthData,
      required this.loginState,
      required this.userLogout,
      required this.authSelection});

  @override
  final StateResponse<String>? signupState;
  @override
  final StateResponse<String>? sentOtp;
  @override
  final StateResponse<String?>? logedUser;
  @override
  final UserAuthModel? userAuthData;
  @override
  final StateResponse<String>? loginState;
  @override
  final StateResponse<dynamic> userLogout;
  @override
  final AuthSelection? authSelection;

  @override
  String toString() {
    return 'UserAuthenticationState(signupState: $signupState, sentOtp: $sentOtp, logedUser: $logedUser, userAuthData: $userAuthData, loginState: $loginState, userLogout: $userLogout, authSelection: $authSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userAuthenticationStateImpl &&
            (identical(other.signupState, signupState) ||
                other.signupState == signupState) &&
            (identical(other.sentOtp, sentOtp) || other.sentOtp == sentOtp) &&
            (identical(other.logedUser, logedUser) ||
                other.logedUser == logedUser) &&
            (identical(other.userAuthData, userAuthData) ||
                other.userAuthData == userAuthData) &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState) &&
            (identical(other.userLogout, userLogout) ||
                other.userLogout == userLogout) &&
            (identical(other.authSelection, authSelection) ||
                other.authSelection == authSelection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signupState, sentOtp, logedUser,
      userAuthData, loginState, userLogout, authSelection);

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
          required final StateResponse<String?>? logedUser,
          required final UserAuthModel? userAuthData,
          required final StateResponse<String>? loginState,
          required final StateResponse<dynamic> userLogout,
          required final AuthSelection? authSelection}) =
      _$userAuthenticationStateImpl;

  @override
  StateResponse<String>? get signupState;
  @override
  StateResponse<String>? get sentOtp;
  @override
  StateResponse<String?>? get logedUser;
  @override
  UserAuthModel? get userAuthData;
  @override
  StateResponse<String>? get loginState;
  @override
  StateResponse<dynamic> get userLogout;
  @override
  AuthSelection? get authSelection;
  @override
  @JsonKey(ignore: true)
  _$$userAuthenticationStateImplCopyWith<_$userAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
