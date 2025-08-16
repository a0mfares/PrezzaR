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
  const factory NewsfeedState.loadingCommentLikes() = _LoadingCommentLikes;
  const factory NewsfeedState.loadingCommentReplaies() =
      _LoadingCommentReplaies;
  const factory NewsfeedState.loadingFollowers() = _LoadingFollowers;
  const factory NewsfeedState.loadingFollowing() = _LoadingFollowing;
  const factory NewsfeedState.loadingUserStories() = _LoadingUserStories;

  const factory NewsfeedState.loadingCommentReplay() = _LoadingCommentReplay;
  const factory NewsfeedState.successLike() = _SuccessLike;
  const factory NewsfeedState.successComment() = _SuccessComment;
  const factory NewsfeedState.successCommentReplay() = _SuccessCommentReplay;
  const factory NewsfeedState.successWidget() = _SuccessWidget;
  const factory NewsfeedState.successFollowers(List<UserEntity> users) =
      _SuccessFollowers;
  const factory NewsfeedState.successFollowing(List<UserEntity> users) =
      _SuccessFollowing;
  const factory NewsfeedState.successUserStories() = _SuccessUserStories;
  const factory NewsfeedState.successCommentLikes(List<UserLikeEntity> likes) =
      _SuccessCommentLikes;
  const factory NewsfeedState.successCommentReplaies(
      List<CommentEntity> comments) = _SuccessCommentReplaies;

  const factory NewsfeedState.loadingAddComment() = _LoadingAddComment;

  const factory NewsfeedState.successCreated() = _SuccessCreated;
  const factory NewsfeedState.progress(double progress) = _Progress;

  const factory NewsfeedState.failure(String err) = _Failure;

}
