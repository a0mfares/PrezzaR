part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loadingField({required String fieldName}) = _LoadingField;
  const factory ProfileState.success({UserEntity? user}) = _Success;
  const factory ProfileState.successUpdated({
    required String message,
    UserEntity? user,
  }) = _SuccessUpdated;
  const factory ProfileState.failure({
    required String error,
    Map<String, dynamic>? rollbackData,
  }) = _Failure;
  const factory ProfileState.optimisticUpdate({
    required UserEntity user,
    @Default(0) int timestamp, 
  }) = _OptimisticUpdate;
  }
