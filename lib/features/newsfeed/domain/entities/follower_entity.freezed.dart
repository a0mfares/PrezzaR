// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follower_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FollowerEntity {
  FollowerInfoEntity get followerInfo => throw _privateConstructorUsedError;
  bool get isIFollowedHim => throw _privateConstructorUsedError;
  bool get isHeFollowedMe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowerEntityCopyWith<FollowerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerEntityCopyWith<$Res> {
  factory $FollowerEntityCopyWith(
          FollowerEntity value, $Res Function(FollowerEntity) then) =
      _$FollowerEntityCopyWithImpl<$Res, FollowerEntity>;
  @useResult
  $Res call(
      {FollowerInfoEntity followerInfo,
      bool isIFollowedHim,
      bool isHeFollowedMe});

  $FollowerInfoEntityCopyWith<$Res> get followerInfo;
}

/// @nodoc
class _$FollowerEntityCopyWithImpl<$Res, $Val extends FollowerEntity>
    implements $FollowerEntityCopyWith<$Res> {
  _$FollowerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerInfo = null,
    Object? isIFollowedHim = null,
    Object? isHeFollowedMe = null,
  }) {
    return _then(_value.copyWith(
      followerInfo: null == followerInfo
          ? _value.followerInfo
          : followerInfo // ignore: cast_nullable_to_non_nullable
              as FollowerInfoEntity,
      isIFollowedHim: null == isIFollowedHim
          ? _value.isIFollowedHim
          : isIFollowedHim // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeFollowedMe: null == isHeFollowedMe
          ? _value.isHeFollowedMe
          : isHeFollowedMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowerInfoEntityCopyWith<$Res> get followerInfo {
    return $FollowerInfoEntityCopyWith<$Res>(_value.followerInfo, (value) {
      return _then(_value.copyWith(followerInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowerEntityImplCopyWith<$Res>
    implements $FollowerEntityCopyWith<$Res> {
  factory _$$FollowerEntityImplCopyWith(_$FollowerEntityImpl value,
          $Res Function(_$FollowerEntityImpl) then) =
      __$$FollowerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FollowerInfoEntity followerInfo,
      bool isIFollowedHim,
      bool isHeFollowedMe});

  @override
  $FollowerInfoEntityCopyWith<$Res> get followerInfo;
}

/// @nodoc
class __$$FollowerEntityImplCopyWithImpl<$Res>
    extends _$FollowerEntityCopyWithImpl<$Res, _$FollowerEntityImpl>
    implements _$$FollowerEntityImplCopyWith<$Res> {
  __$$FollowerEntityImplCopyWithImpl(
      _$FollowerEntityImpl _value, $Res Function(_$FollowerEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerInfo = null,
    Object? isIFollowedHim = null,
    Object? isHeFollowedMe = null,
  }) {
    return _then(_$FollowerEntityImpl(
      followerInfo: null == followerInfo
          ? _value.followerInfo
          : followerInfo // ignore: cast_nullable_to_non_nullable
              as FollowerInfoEntity,
      isIFollowedHim: null == isIFollowedHim
          ? _value.isIFollowedHim
          : isIFollowedHim // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeFollowedMe: null == isHeFollowedMe
          ? _value.isHeFollowedMe
          : isHeFollowedMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FollowerEntityImpl implements _FollowerEntity {
  const _$FollowerEntityImpl(
      {required this.followerInfo,
      required this.isIFollowedHim,
      required this.isHeFollowedMe});

  @override
  final FollowerInfoEntity followerInfo;
  @override
  final bool isIFollowedHim;
  @override
  final bool isHeFollowedMe;

  @override
  String toString() {
    return 'FollowerEntity(followerInfo: $followerInfo, isIFollowedHim: $isIFollowedHim, isHeFollowedMe: $isHeFollowedMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerEntityImpl &&
            (identical(other.followerInfo, followerInfo) ||
                other.followerInfo == followerInfo) &&
            (identical(other.isIFollowedHim, isIFollowedHim) ||
                other.isIFollowedHim == isIFollowedHim) &&
            (identical(other.isHeFollowedMe, isHeFollowedMe) ||
                other.isHeFollowedMe == isHeFollowedMe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, followerInfo, isIFollowedHim, isHeFollowedMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerEntityImplCopyWith<_$FollowerEntityImpl> get copyWith =>
      __$$FollowerEntityImplCopyWithImpl<_$FollowerEntityImpl>(
          this, _$identity);
}

abstract class _FollowerEntity implements FollowerEntity {
  const factory _FollowerEntity(
      {required final FollowerInfoEntity followerInfo,
      required final bool isIFollowedHim,
      required final bool isHeFollowedMe}) = _$FollowerEntityImpl;

  @override
  FollowerInfoEntity get followerInfo;
  @override
  bool get isIFollowedHim;
  @override
  bool get isHeFollowedMe;
  @override
  @JsonKey(ignore: true)
  _$$FollowerEntityImplCopyWith<_$FollowerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FollowerInfoEntity {
  String get uuid => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  int get numberOfFollowers => throw _privateConstructorUsedError;
  int get numberOfFollowing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowerInfoEntityCopyWith<FollowerInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerInfoEntityCopyWith<$Res> {
  factory $FollowerInfoEntityCopyWith(
          FollowerInfoEntity value, $Res Function(FollowerInfoEntity) then) =
      _$FollowerInfoEntityCopyWithImpl<$Res, FollowerInfoEntity>;
  @useResult
  $Res call(
      {String uuid,
      String fullName,
      String userName,
      String profilePictureUrl,
      int numberOfFollowers,
      int numberOfFollowing});
}

/// @nodoc
class _$FollowerInfoEntityCopyWithImpl<$Res, $Val extends FollowerInfoEntity>
    implements $FollowerInfoEntityCopyWith<$Res> {
  _$FollowerInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? fullName = null,
    Object? userName = null,
    Object? profilePictureUrl = null,
    Object? numberOfFollowers = null,
    Object? numberOfFollowing = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfFollowers: null == numberOfFollowers
          ? _value.numberOfFollowers
          : numberOfFollowers // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfFollowing: null == numberOfFollowing
          ? _value.numberOfFollowing
          : numberOfFollowing // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowerInfoEntityImplCopyWith<$Res>
    implements $FollowerInfoEntityCopyWith<$Res> {
  factory _$$FollowerInfoEntityImplCopyWith(_$FollowerInfoEntityImpl value,
          $Res Function(_$FollowerInfoEntityImpl) then) =
      __$$FollowerInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String fullName,
      String userName,
      String profilePictureUrl,
      int numberOfFollowers,
      int numberOfFollowing});
}

/// @nodoc
class __$$FollowerInfoEntityImplCopyWithImpl<$Res>
    extends _$FollowerInfoEntityCopyWithImpl<$Res, _$FollowerInfoEntityImpl>
    implements _$$FollowerInfoEntityImplCopyWith<$Res> {
  __$$FollowerInfoEntityImplCopyWithImpl(_$FollowerInfoEntityImpl _value,
      $Res Function(_$FollowerInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? fullName = null,
    Object? userName = null,
    Object? profilePictureUrl = null,
    Object? numberOfFollowers = null,
    Object? numberOfFollowing = null,
  }) {
    return _then(_$FollowerInfoEntityImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfFollowers: null == numberOfFollowers
          ? _value.numberOfFollowers
          : numberOfFollowers // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfFollowing: null == numberOfFollowing
          ? _value.numberOfFollowing
          : numberOfFollowing // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FollowerInfoEntityImpl implements _FollowerInfoEntity {
  const _$FollowerInfoEntityImpl(
      {required this.uuid,
      required this.fullName,
      required this.userName,
      required this.profilePictureUrl,
      required this.numberOfFollowers,
      required this.numberOfFollowing});

  @override
  final String uuid;
  @override
  final String fullName;
  @override
  final String userName;
  @override
  final String profilePictureUrl;
  @override
  final int numberOfFollowers;
  @override
  final int numberOfFollowing;

  @override
  String toString() {
    return 'FollowerInfoEntity(uuid: $uuid, fullName: $fullName, userName: $userName, profilePictureUrl: $profilePictureUrl, numberOfFollowers: $numberOfFollowers, numberOfFollowing: $numberOfFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerInfoEntityImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.numberOfFollowers, numberOfFollowers) ||
                other.numberOfFollowers == numberOfFollowers) &&
            (identical(other.numberOfFollowing, numberOfFollowing) ||
                other.numberOfFollowing == numberOfFollowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, fullName, userName,
      profilePictureUrl, numberOfFollowers, numberOfFollowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerInfoEntityImplCopyWith<_$FollowerInfoEntityImpl> get copyWith =>
      __$$FollowerInfoEntityImplCopyWithImpl<_$FollowerInfoEntityImpl>(
          this, _$identity);
}

abstract class _FollowerInfoEntity implements FollowerInfoEntity {
  const factory _FollowerInfoEntity(
      {required final String uuid,
      required final String fullName,
      required final String userName,
      required final String profilePictureUrl,
      required final int numberOfFollowers,
      required final int numberOfFollowing}) = _$FollowerInfoEntityImpl;

  @override
  String get uuid;
  @override
  String get fullName;
  @override
  String get userName;
  @override
  String get profilePictureUrl;
  @override
  int get numberOfFollowers;
  @override
  int get numberOfFollowing;
  @override
  @JsonKey(ignore: true)
  _$$FollowerInfoEntityImplCopyWith<_$FollowerInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FollowerListEntity {
  String get status => throw _privateConstructorUsedError;
  List<FollowerEntity> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowerListEntityCopyWith<FollowerListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerListEntityCopyWith<$Res> {
  factory $FollowerListEntityCopyWith(
          FollowerListEntity value, $Res Function(FollowerListEntity) then) =
      _$FollowerListEntityCopyWithImpl<$Res, FollowerListEntity>;
  @useResult
  $Res call({String status, List<FollowerEntity> data});
}

/// @nodoc
class _$FollowerListEntityCopyWithImpl<$Res, $Val extends FollowerListEntity>
    implements $FollowerListEntityCopyWith<$Res> {
  _$FollowerListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FollowerEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowerListEntityImplCopyWith<$Res>
    implements $FollowerListEntityCopyWith<$Res> {
  factory _$$FollowerListEntityImplCopyWith(_$FollowerListEntityImpl value,
          $Res Function(_$FollowerListEntityImpl) then) =
      __$$FollowerListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<FollowerEntity> data});
}

/// @nodoc
class __$$FollowerListEntityImplCopyWithImpl<$Res>
    extends _$FollowerListEntityCopyWithImpl<$Res, _$FollowerListEntityImpl>
    implements _$$FollowerListEntityImplCopyWith<$Res> {
  __$$FollowerListEntityImplCopyWithImpl(_$FollowerListEntityImpl _value,
      $Res Function(_$FollowerListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$FollowerListEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FollowerEntity>,
    ));
  }
}

/// @nodoc

class _$FollowerListEntityImpl implements _FollowerListEntity {
  const _$FollowerListEntityImpl(
      {required this.status, required final List<FollowerEntity> data})
      : _data = data;

  @override
  final String status;
  final List<FollowerEntity> _data;
  @override
  List<FollowerEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FollowerListEntity(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerListEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerListEntityImplCopyWith<_$FollowerListEntityImpl> get copyWith =>
      __$$FollowerListEntityImplCopyWithImpl<_$FollowerListEntityImpl>(
          this, _$identity);
}

abstract class _FollowerListEntity implements FollowerListEntity {
  const factory _FollowerListEntity(
      {required final String status,
      required final List<FollowerEntity> data}) = _$FollowerListEntityImpl;

  @override
  String get status;
  @override
  List<FollowerEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$FollowerListEntityImplCopyWith<_$FollowerListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
