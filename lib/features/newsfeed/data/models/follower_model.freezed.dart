// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follower_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowerModel _$FollowerModelFromJson(Map<String, dynamic> json) {
  return _FollowerModel.fromJson(json);
}

/// @nodoc
mixin _$FollowerModel {
  FollowerInfoModel get followerInfo => throw _privateConstructorUsedError;
  bool get isIFollowedHim => throw _privateConstructorUsedError;
  bool get isHeFollowedMe => throw _privateConstructorUsedError;

  /// Serializes this FollowerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowerModelCopyWith<FollowerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerModelCopyWith<$Res> {
  factory $FollowerModelCopyWith(
          FollowerModel value, $Res Function(FollowerModel) then) =
      _$FollowerModelCopyWithImpl<$Res, FollowerModel>;
  @useResult
  $Res call(
      {FollowerInfoModel followerInfo,
      bool isIFollowedHim,
      bool isHeFollowedMe});

  $FollowerInfoModelCopyWith<$Res> get followerInfo;
}

/// @nodoc
class _$FollowerModelCopyWithImpl<$Res, $Val extends FollowerModel>
    implements $FollowerModelCopyWith<$Res> {
  _$FollowerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowerModel
  /// with the given fields replaced by the non-null parameter values.
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
              as FollowerInfoModel,
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

  /// Create a copy of FollowerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FollowerInfoModelCopyWith<$Res> get followerInfo {
    return $FollowerInfoModelCopyWith<$Res>(_value.followerInfo, (value) {
      return _then(_value.copyWith(followerInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowerModelImplCopyWith<$Res>
    implements $FollowerModelCopyWith<$Res> {
  factory _$$FollowerModelImplCopyWith(
          _$FollowerModelImpl value, $Res Function(_$FollowerModelImpl) then) =
      __$$FollowerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FollowerInfoModel followerInfo,
      bool isIFollowedHim,
      bool isHeFollowedMe});

  @override
  $FollowerInfoModelCopyWith<$Res> get followerInfo;
}

/// @nodoc
class __$$FollowerModelImplCopyWithImpl<$Res>
    extends _$FollowerModelCopyWithImpl<$Res, _$FollowerModelImpl>
    implements _$$FollowerModelImplCopyWith<$Res> {
  __$$FollowerModelImplCopyWithImpl(
      _$FollowerModelImpl _value, $Res Function(_$FollowerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerInfo = null,
    Object? isIFollowedHim = null,
    Object? isHeFollowedMe = null,
  }) {
    return _then(_$FollowerModelImpl(
      followerInfo: null == followerInfo
          ? _value.followerInfo
          : followerInfo // ignore: cast_nullable_to_non_nullable
              as FollowerInfoModel,
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
@JsonSerializable()
class _$FollowerModelImpl implements _FollowerModel {
  const _$FollowerModelImpl(
      {required this.followerInfo,
      required this.isIFollowedHim,
      required this.isHeFollowedMe});

  factory _$FollowerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerModelImplFromJson(json);

  @override
  final FollowerInfoModel followerInfo;
  @override
  final bool isIFollowedHim;
  @override
  final bool isHeFollowedMe;

  @override
  String toString() {
    return 'FollowerModel(followerInfo: $followerInfo, isIFollowedHim: $isIFollowedHim, isHeFollowedMe: $isHeFollowedMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerModelImpl &&
            (identical(other.followerInfo, followerInfo) ||
                other.followerInfo == followerInfo) &&
            (identical(other.isIFollowedHim, isIFollowedHim) ||
                other.isIFollowedHim == isIFollowedHim) &&
            (identical(other.isHeFollowedMe, isHeFollowedMe) ||
                other.isHeFollowedMe == isHeFollowedMe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, followerInfo, isIFollowedHim, isHeFollowedMe);

  /// Create a copy of FollowerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerModelImplCopyWith<_$FollowerModelImpl> get copyWith =>
      __$$FollowerModelImplCopyWithImpl<_$FollowerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowerModelImplToJson(
      this,
    );
  }
}

abstract class _FollowerModel implements FollowerModel {
  const factory _FollowerModel(
      {required final FollowerInfoModel followerInfo,
      required final bool isIFollowedHim,
      required final bool isHeFollowedMe}) = _$FollowerModelImpl;

  factory _FollowerModel.fromJson(Map<String, dynamic> json) =
      _$FollowerModelImpl.fromJson;

  @override
  FollowerInfoModel get followerInfo;
  @override
  bool get isIFollowedHim;
  @override
  bool get isHeFollowedMe;

  /// Create a copy of FollowerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowerModelImplCopyWith<_$FollowerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowerInfoModel _$FollowerInfoModelFromJson(Map<String, dynamic> json) {
  return _FollowerInfoModel.fromJson(json);
}

/// @nodoc
mixin _$FollowerInfoModel {
  String get uuid => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  int get numberOfFollowers => throw _privateConstructorUsedError;
  int get numberOfFollowing => throw _privateConstructorUsedError;

  /// Serializes this FollowerInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowerInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowerInfoModelCopyWith<FollowerInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerInfoModelCopyWith<$Res> {
  factory $FollowerInfoModelCopyWith(
          FollowerInfoModel value, $Res Function(FollowerInfoModel) then) =
      _$FollowerInfoModelCopyWithImpl<$Res, FollowerInfoModel>;
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
class _$FollowerInfoModelCopyWithImpl<$Res, $Val extends FollowerInfoModel>
    implements $FollowerInfoModelCopyWith<$Res> {
  _$FollowerInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowerInfoModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$FollowerInfoModelImplCopyWith<$Res>
    implements $FollowerInfoModelCopyWith<$Res> {
  factory _$$FollowerInfoModelImplCopyWith(_$FollowerInfoModelImpl value,
          $Res Function(_$FollowerInfoModelImpl) then) =
      __$$FollowerInfoModelImplCopyWithImpl<$Res>;
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
class __$$FollowerInfoModelImplCopyWithImpl<$Res>
    extends _$FollowerInfoModelCopyWithImpl<$Res, _$FollowerInfoModelImpl>
    implements _$$FollowerInfoModelImplCopyWith<$Res> {
  __$$FollowerInfoModelImplCopyWithImpl(_$FollowerInfoModelImpl _value,
      $Res Function(_$FollowerInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowerInfoModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$FollowerInfoModelImpl(
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
@JsonSerializable()
class _$FollowerInfoModelImpl implements _FollowerInfoModel {
  const _$FollowerInfoModelImpl(
      {required this.uuid,
      required this.fullName,
      required this.userName,
      required this.profilePictureUrl,
      required this.numberOfFollowers,
      required this.numberOfFollowing});

  factory _$FollowerInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerInfoModelImplFromJson(json);

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
    return 'FollowerInfoModel(uuid: $uuid, fullName: $fullName, userName: $userName, profilePictureUrl: $profilePictureUrl, numberOfFollowers: $numberOfFollowers, numberOfFollowing: $numberOfFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerInfoModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, fullName, userName,
      profilePictureUrl, numberOfFollowers, numberOfFollowing);

  /// Create a copy of FollowerInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerInfoModelImplCopyWith<_$FollowerInfoModelImpl> get copyWith =>
      __$$FollowerInfoModelImplCopyWithImpl<_$FollowerInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowerInfoModelImplToJson(
      this,
    );
  }
}

abstract class _FollowerInfoModel implements FollowerInfoModel {
  const factory _FollowerInfoModel(
      {required final String uuid,
      required final String fullName,
      required final String userName,
      required final String profilePictureUrl,
      required final int numberOfFollowers,
      required final int numberOfFollowing}) = _$FollowerInfoModelImpl;

  factory _FollowerInfoModel.fromJson(Map<String, dynamic> json) =
      _$FollowerInfoModelImpl.fromJson;

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

  /// Create a copy of FollowerInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowerInfoModelImplCopyWith<_$FollowerInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowerListModel _$FollowerListModelFromJson(Map<String, dynamic> json) {
  return _FollowerListModel.fromJson(json);
}

/// @nodoc
mixin _$FollowerListModel {
  String get status => throw _privateConstructorUsedError;
  List<FollowerModel> get data => throw _privateConstructorUsedError;

  /// Serializes this FollowerListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowerListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowerListModelCopyWith<FollowerListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerListModelCopyWith<$Res> {
  factory $FollowerListModelCopyWith(
          FollowerListModel value, $Res Function(FollowerListModel) then) =
      _$FollowerListModelCopyWithImpl<$Res, FollowerListModel>;
  @useResult
  $Res call({String status, List<FollowerModel> data});
}

/// @nodoc
class _$FollowerListModelCopyWithImpl<$Res, $Val extends FollowerListModel>
    implements $FollowerListModelCopyWith<$Res> {
  _$FollowerListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowerListModel
  /// with the given fields replaced by the non-null parameter values.
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
              as List<FollowerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowerListModelImplCopyWith<$Res>
    implements $FollowerListModelCopyWith<$Res> {
  factory _$$FollowerListModelImplCopyWith(_$FollowerListModelImpl value,
          $Res Function(_$FollowerListModelImpl) then) =
      __$$FollowerListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<FollowerModel> data});
}

/// @nodoc
class __$$FollowerListModelImplCopyWithImpl<$Res>
    extends _$FollowerListModelCopyWithImpl<$Res, _$FollowerListModelImpl>
    implements _$$FollowerListModelImplCopyWith<$Res> {
  __$$FollowerListModelImplCopyWithImpl(_$FollowerListModelImpl _value,
      $Res Function(_$FollowerListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowerListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$FollowerListModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FollowerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowerListModelImpl implements _FollowerListModel {
  const _$FollowerListModelImpl(
      {required this.status, required final List<FollowerModel> data})
      : _data = data;

  factory _$FollowerListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerListModelImplFromJson(json);

  @override
  final String status;
  final List<FollowerModel> _data;
  @override
  List<FollowerModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FollowerListModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of FollowerListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerListModelImplCopyWith<_$FollowerListModelImpl> get copyWith =>
      __$$FollowerListModelImplCopyWithImpl<_$FollowerListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowerListModelImplToJson(
      this,
    );
  }
}

abstract class _FollowerListModel implements FollowerListModel {
  const factory _FollowerListModel(
      {required final String status,
      required final List<FollowerModel> data}) = _$FollowerListModelImpl;

  factory _FollowerListModel.fromJson(Map<String, dynamic> json) =
      _$FollowerListModelImpl.fromJson;

  @override
  String get status;
  @override
  List<FollowerModel> get data;

  /// Create a copy of FollowerListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowerListModelImplCopyWith<_$FollowerListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
