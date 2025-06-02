part of 'newsfeed_bloc.dart';

@freezed
class NewsfeedState with _$NewsfeedState {
  const factory NewsfeedState.initial() = _Initial;
  const factory NewsfeedState.loading() = _Loading;
  const factory NewsfeedState.success() = _Success;
  const factory NewsfeedState.loadingWidget() = _LoadingWidget;
  const factory NewsfeedState.loadigProfile() = _LoadigProfile;
  const factory NewsfeedState.loadingPosts() = _LoadingPosts;
  const factory NewsfeedState.postSaved() = _PostSaved;
  const factory NewsfeedState.loadingLike() = _LoadingLike;
  const factory NewsfeedState.loadingComment() = _LoadingComment;
  const factory NewsfeedState.loadingCommentReplay() = _LoadingCommentReplay;
  const factory NewsfeedState.successLike() = _SuccessLike;
  const factory NewsfeedState.successComment() = _SuccessComment;
  const factory NewsfeedState.successCommentReplay() = _SuccessCommentReplay;
  const factory NewsfeedState.successWidget() = _SuccessWidget;
  const factory NewsfeedState.loadingAddComment() = _LoadingAddComment;

  const factory NewsfeedState.successCreated() = _SuccessCreated;
  const factory NewsfeedState.progress(double progress) = _Progress;

  const factory NewsfeedState.failure(String err) = _Failure;
}
