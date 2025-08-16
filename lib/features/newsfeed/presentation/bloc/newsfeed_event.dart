part of 'newsfeed_bloc.dart';

@freezed
class NewsfeedEvent with _$NewsfeedEvent {
  const factory NewsfeedEvent.pickupImage(File img) = _PickupImage;
  const factory NewsfeedEvent.createPost() = _CreatePost;
  const factory NewsfeedEvent.fetchPosts() = _FetchPosts;
  const factory NewsfeedEvent.getUsers() = _GetUsers;
  const factory NewsfeedEvent.follow(uuid) = _Follow;
  const factory NewsfeedEvent.unFollow(uuid) = _UnFollow;
  const factory NewsfeedEvent.getUserFollowers(String uuid) = _GetUserFollowers;
  const factory NewsfeedEvent.getUserFollowing(String uuid) = _GetUserFollowing;
  const factory NewsfeedEvent.getUserStories(String uuid) = _GetUserStories;
  const factory NewsfeedEvent.deleteUserStory(String uuid) = _DeleteUserStory;
  const factory NewsfeedEvent.addUserStory(String uuid) = _AddUserStory;
  const factory NewsfeedEvent.addTagPost(String uuid) = _AddTagPost;

  const factory NewsfeedEvent.getUserPosts(String uuid) = _GetUserPosts;
  const factory NewsfeedEvent.savePost(String uuid) = _SavePost;
  const factory NewsfeedEvent.getSavedPosts(String uuid) = _GetSavedPosts;
  const factory NewsfeedEvent.getUserInfo(String uuid) = _GetUserInfo;
  const factory NewsfeedEvent.likePost(String postId) = _LikePost;
  const factory NewsfeedEvent.unLikePost(String postId) = _UnLikePost;
  const factory NewsfeedEvent.unLikeCmment(String commentId, String postId) =
      _UnLikeCmment;
  const factory NewsfeedEvent.deleteReplayComment(String commentId, replyId) =
      _DeleteReplayComment;
  const factory NewsfeedEvent.getLikes(String postId) = _GetLikes;

  const factory NewsfeedEvent.addComment(String postId) = _AddComment;
  const factory NewsfeedEvent.editComment(String commentId) = _EditComment;
  const factory NewsfeedEvent.deleteComment(
      String commentId, String postId, String content) = _DeleteComment;

  const factory NewsfeedEvent.getComments(String postId) = _GetComments;
  const factory NewsfeedEvent.replayComment(String commentId) = _ReplayComment;
  const factory NewsfeedEvent.likeComment(String commentId, String postId) =
      _LikeComment;

  const factory NewsfeedEvent.getCommentLikes(String commentId) =
      _GetCommentLikes;

  const factory NewsfeedEvent.getCommentReplaies(String commentId) =
      _GetCommentReplaies;

  const factory NewsfeedEvent.getTagVendor() = _GetTagVendor;
  const factory NewsfeedEvent.getTagProduct() = _GetTagProduct;
}
