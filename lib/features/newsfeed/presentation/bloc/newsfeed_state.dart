part of 'newsfeed_bloc.dart';

@freezed
class NewsfeedState with _$NewsfeedState {
  // Initial state
  const factory NewsfeedState.initial() = _Initial;

  // Generic loading states
  const factory NewsfeedState.loading() = _Loading;
  const factory NewsfeedState.success() = _Success;

  // Image handling
  const factory NewsfeedState.imageSelected(File image, Uint8List bytes) =
      _ImageSelected;

  // Post creation
  const factory NewsfeedState.progress(double progress) = _Progress;
  const factory NewsfeedState.postCreated() = _PostCreated;

  // Posts loading states
  const factory NewsfeedState.loadingPosts() = _LoadingPosts;
  const factory NewsfeedState.postsLoaded(List<PostEntity> posts) =
      _PostsLoaded;
  const factory NewsfeedState.userPostsLoaded(List<PostEntity> userPosts) =
      _UserPostsLoaded;

  const factory NewsfeedState.loadingSavedPosts() = _LoadingSavedPosts;
  const factory NewsfeedState.savedPostsLoaded(List<PostEntity> savedPosts) =
      _SavedPostsLoaded;

  // Post actions
  const factory NewsfeedState.loadingSavePost() = _LoadingSavePost;
  const factory NewsfeedState.postSaved() = _PostSaved;

  // Users
  const factory NewsfeedState.loadingUsers() = _LoadingUsers;
  const factory NewsfeedState.usersLoaded(List<UserSearchEntity> users) =
      _UsersLoaded;

  // Profile
  const factory NewsfeedState.loadingProfile() = _LoadingProfile;
  const factory NewsfeedState.profileLoaded(ProfileSocialEntity profile) =
      _ProfileLoaded;

  // Follow system
  const factory NewsfeedState.loadingFollow() = _LoadingFollow;
  const factory NewsfeedState.followSuccess() = _FollowSuccess;
  const factory NewsfeedState.unfollowSuccess() = _UnfollowSuccess;

  const factory NewsfeedState.loadingFollowers() = _LoadingFollowers;
  const factory NewsfeedState.followersLoaded(List<FollowerEntity> followers) =
      _FollowersLoaded;

  const factory NewsfeedState.loadingFollowing() = _LoadingFollowing;
  const factory NewsfeedState.followingLoaded(List<FollowerEntity> following) =
      _FollowingLoaded;

  // Likes system
  const factory NewsfeedState.loadingLike() = _LoadingLike;
  const factory NewsfeedState.postLiked() = _PostLiked;
  const factory NewsfeedState.postUnliked() = _PostUnliked;

  const factory NewsfeedState.loadingLikes() = _LoadingLikes;
  const factory NewsfeedState.likesLoaded(
      String postID, List<UserLikeEntity> likes) = _LikesLoaded;

  // Comments system
  const factory NewsfeedState.loadingComments() = _LoadingComments;
  const factory NewsfeedState.commentsLoaded(
      String postID, List<CommentEntity> comments) = _CommentsLoaded;

  const factory NewsfeedState.loadingAddComment() = _LoadingAddComment;
  const factory NewsfeedState.commentAdded() = _CommentAdded;

  const factory NewsfeedState.loadingDeleteComment() = _LoadingDeleteComment;
  const factory NewsfeedState.commentDeleted() = _CommentDeleted;

  // Comment likes
  const factory NewsfeedState.loadingCommentLike() = _LoadingCommentLike;
  const factory NewsfeedState.commentLiked() = _CommentLiked;
  const factory NewsfeedState.commentUnliked() = _CommentUnliked;

  const factory NewsfeedState.loadingCommentLikes() = _LoadingCommentLikes;
  const factory NewsfeedState.commentLikesLoaded(List<UserLikeEntity> likes) =
      _CommentLikesLoaded;

  // Comment replies
  const factory NewsfeedState.loadingReplies() = _LoadingReplies;
  const factory NewsfeedState.repliesLoaded(List<CommentEntity> replies) =
      _RepliesLoaded;

  const factory NewsfeedState.replyAdded() = _ReplyAdded;
  const factory NewsfeedState.replyDeleted() = _ReplyDeleted;

  // Stories (for future implementation)
  const factory NewsfeedState.loadingStories() = _LoadingStories;
  const factory NewsfeedState.storiesLoaded() = _StoriesLoaded;
  const factory NewsfeedState.storyAdded() = _StoryAdded;
  const factory NewsfeedState.storyDeleted() = _StoryDeleted;

  // Search and tags
  const factory NewsfeedState.loadingVendors() = _LoadingVendors;
  const factory NewsfeedState.vendorsLoaded(List<VendorTagEntity> vendors) =
      _VendorsLoaded;

  const factory NewsfeedState.loadingProducts() = _LoadingProducts;
  const factory NewsfeedState.productsLoaded(List<ProductTagEntity> products) =
      _ProductsLoaded;

  // Error state
  const factory NewsfeedState.failure(String message) = _Failure;
}
