// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFormState {
  String get email => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  AsyncValue<void>? get loginResponse => throw _privateConstructorUsedError;

  /// Create a copy of LoginFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {String email,
      String? emailError,
      String password,
      String? passwordError,
      bool isSubmitted,
      AsyncValue<void>? loginResponse});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailError = freezed,
    Object? password = null,
    Object? passwordError = freezed,
    Object? isSubmitted = null,
    Object? loginResponse = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormStateImplCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$LoginFormStateImplCopyWith(_$LoginFormStateImpl value,
          $Res Function(_$LoginFormStateImpl) then) =
      __$$LoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String? emailError,
      String password,
      String? passwordError,
      bool isSubmitted,
      AsyncValue<void>? loginResponse});
}

/// @nodoc
class __$$LoginFormStateImplCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$LoginFormStateImpl>
    implements _$$LoginFormStateImplCopyWith<$Res> {
  __$$LoginFormStateImplCopyWithImpl(
      _$LoginFormStateImpl _value, $Res Function(_$LoginFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailError = freezed,
    Object? password = null,
    Object? passwordError = freezed,
    Object? isSubmitted = null,
    Object? loginResponse = freezed,
  }) {
    return _then(_$LoginFormStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>?,
    ));
  }
}

/// @nodoc

class _$LoginFormStateImpl implements _LoginFormState {
  const _$LoginFormStateImpl(
      {this.email = '',
      this.emailError,
      this.password = '',
      this.passwordError,
      this.isSubmitted = false,
      this.loginResponse});

  @override
  @JsonKey()
  final String email;
  @override
  final String? emailError;
  @override
  @JsonKey()
  final String password;
  @override
  final String? passwordError;
  @override
  @JsonKey()
  final bool isSubmitted;
  @override
  final AsyncValue<void>? loginResponse;

  @override
  String toString() {
    return 'LoginFormState(email: $email, emailError: $emailError, password: $password, passwordError: $passwordError, isSubmitted: $isSubmitted, loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted) &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, emailError, password,
      passwordError, isSubmitted, loginResponse);

  /// Create a copy of LoginFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      __$$LoginFormStateImplCopyWithImpl<_$LoginFormStateImpl>(
          this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {final String email,
      final String? emailError,
      final String password,
      final String? passwordError,
      final bool isSubmitted,
      final AsyncValue<void>? loginResponse}) = _$LoginFormStateImpl;

  @override
  String get email;
  @override
  String? get emailError;
  @override
  String get password;
  @override
  String? get passwordError;
  @override
  bool get isSubmitted;
  @override
  AsyncValue<void>? get loginResponse;

  /// Create a copy of LoginFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
