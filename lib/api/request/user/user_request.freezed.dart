// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRequest {
// ignore: invalid_annotation_target
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'photo_key')
  String? get photoKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRequestCopyWith<UserRequest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(UserRequest value, $Res Function(UserRequest) then) = _$UserRequestCopyWithImpl<$Res, UserRequest>;

  @useResult
  $Res call({@JsonKey(name: 'display_name') String displayName, @JsonKey(name: 'photo_key') String? photoKey});
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res, $Val extends UserRequest> implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? photoKey = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoKey: freezed == photoKey
          ? _value.photoKey
          : photoKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRequestCopyWith<$Res> implements $UserRequestCopyWith<$Res> {
  factory _$$_UserRequestCopyWith(_$_UserRequest value, $Res Function(_$_UserRequest) then) = __$$_UserRequestCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({@JsonKey(name: 'display_name') String displayName, @JsonKey(name: 'photo_key') String? photoKey});
}

/// @nodoc
class __$$_UserRequestCopyWithImpl<$Res> extends _$UserRequestCopyWithImpl<$Res, _$_UserRequest> implements _$$_UserRequestCopyWith<$Res> {
  __$$_UserRequestCopyWithImpl(_$_UserRequest _value, $Res Function(_$_UserRequest) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? photoKey = freezed,
  }) {
    return _then(_$_UserRequest(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoKey: freezed == photoKey
          ? _value.photoKey
          : photoKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequest implements _UserRequest {
  const _$_UserRequest({@JsonKey(name: 'display_name') required this.displayName, @JsonKey(name: 'photo_key') required this.photoKey});

  factory _$_UserRequest.fromJson(Map<String, dynamic> json) => _$$_UserRequestFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'display_name')
  final String displayName;

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'photo_key')
  final String? photoKey;

  @override
  String toString() {
    return 'UserRequest(displayName: $displayName, photoKey: $photoKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_UserRequest && (identical(other.displayName, displayName) || other.displayName == displayName) && (identical(other.photoKey, photoKey) || other.photoKey == photoKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, photoKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRequestCopyWith<_$_UserRequest> get copyWith => __$$_UserRequestCopyWithImpl<_$_UserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRequestToJson(
      this,
    );
  }
}

abstract class _UserRequest implements UserRequest {
  const factory _UserRequest({@JsonKey(name: 'display_name') required final String displayName, @JsonKey(name: 'photo_key') required final String? photoKey}) = _$_UserRequest;

  factory _UserRequest.fromJson(Map<String, dynamic> json) = _$_UserRequest.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'display_name')
  String get displayName;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'photo_key')
  String? get photoKey;

  @override
  @JsonKey(ignore: true)
  _$$_UserRequestCopyWith<_$_UserRequest> get copyWith => throw _privateConstructorUsedError;
}
