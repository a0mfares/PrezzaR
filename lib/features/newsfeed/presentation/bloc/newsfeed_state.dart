part of 'newsfeed_bloc.dart';

@freezed
class NewsfeedState with _$NewsfeedState {
  // Initial state
  const factory NewsfeedState.initial() = _Initial;
  
  // Image states
  const factory NewsfeedState.loadingImage() = _LoadingImage;
  const factory NewsfeedState.successImage() = _SuccessImage;
  
  // Post creation states
  const factory NewsfeedState.creatingPost(double progress) = _CreatingPost;
  const factory NewsfeedState.successCreatePost() = _SuccessCreatePost;
  const factory NewsfeedState.failureCreatePost(String err) = _FailureCreatePost;
  
  // Fetch posts states (newsfeed)
  const factory NewsfeedState.loadingPosts() = _LoadingPosts;
  const factory NewsfeedState.successPosts() = _SuccessPosts;
  const factory NewsfeedState.failurePosts(String err) = _FailurePosts;
  
  // User posts states
  const factory NewsfeedState.loadingUserPosts() = _LoadingUserPosts;
  const factory NewsfeedState.successUserPosts() = _SuccessUserPosts;
  const factory NewsfeedState.failureUserPosts(String err) = _FailureUserPosts;
  
  // Saved posts states
  const factory NewsfeedState.loadingSavedPosts() = _LoadingSavedPosts;
  const factory NewsfeedState.successSavedPosts() = _SuccessSavedPosts;
  const factory NewsfeedState.failureSavedPosts(String err) = _FailureSavedPosts;
  
  // Save post states
  const factory NewsfeedState.successPostSaved() = _SuccessPostSaved;
  const factory NewsfeedState.failurePostSaved(String err) = _FailurePostSaved;
  
  // Like post states
  const factory NewsfeedState.successLikePost() = _SuccessLikePost;
  const factory NewsfeedState.failureLikePost(String err) = _FailureLikePost;
  
  // Unlike post states
  const factory NewsfeedState.successUnlikePost() = _SuccessUnlikePost;
  const factory NewsfeedState.failureUnlikePost(String err) = _FailureUnlikePost;
  
  // Get likes states
  const factory NewsfeedState.loadingLikes() = _LoadingLikes;
  const factory NewsfeedState.successLikes() = _SuccessLikes;
  const factory NewsfeedState.failureLikes(String err) = _FailureLikes;
  
  // Comments states
  const factory NewsfeedState.loadingComments() = _LoadingComments;
  const factory NewsfeedState.successComments() = _SuccessComments;
  const factory NewsfeedState.failureComments(String err) = _FailureComments;
  
  // Add comment states
  const factory NewsfeedState.successAddComment() = _SuccessAddComment;
  const factory NewsfeedState.failureAddComment(String err) = _FailureAddComment;
  
  // Reply comment states
  const factory NewsfeedState.loadingReplies() = _LoadingReplies;
  const factory NewsfeedState.successReplies() = _SuccessReplies;
  const factory NewsfeedState.failureReplies(String err) = _FailureReplies;
  
  const factory NewsfeedState.successReplyComment() = _SuccessReplyComment;
  const factory NewsfeedState.failureReplyComment(String err) = _FailureReplyComment;
  
  // Like comment states
  const factory NewsfeedState.successLikeComment() = _SuccessLikeComment;
  const factory NewsfeedState.failureLikeComment(String err) = _FailureLikeComment;
  
  // Unlike comment states
  const factory NewsfeedState.successUnlikeComment() = _SuccessUnlikeComment;
  const factory NewsfeedState.failureUnlikeComment(String err) = _FailureUnlikeComment;
  
  // Delete comment states
  const factory NewsfeedState.successDeleteComment() = _SuccessDeleteComment;
  const factory NewsfeedState.failureDeleteComment(String err) = _FailureDeleteComment;
  
  // Delete reply states
  const factory NewsfeedState.successDeleteReply() = _SuccessDeleteReply;
  const factory NewsfeedState.failureDeleteReply(String err) = _FailureDeleteReply;
  
  // Profile states
  const factory NewsfeedState.loadingProfile() = _LoadingProfile;
  const factory NewsfeedState.successProfile() = _SuccessProfile;
  const factory NewsfeedState.failureProfile(String err) = _FailureProfile;
  
  // Follow states
  const factory NewsfeedState.loadingFollow() = _LoadingFollow;
  const factory NewsfeedState.successFollow() = _SuccessFollow;
  const factory NewsfeedState.failureFollow(String err) = _FailureFollow;
  
  // Unfollow states
  const factory NewsfeedState.loadingUnfollow() = _LoadingUnfollow;
  const factory NewsfeedState.successUnfollow() = _SuccessUnfollow;
  const factory NewsfeedState.failureUnfollow(String err) = _FailureUnfollow;
  
  // Users states
  const factory NewsfeedState.loadingUsers() = _LoadingUsers;
  const factory NewsfeedState.successUsers() = _SuccessUsers;
  const factory NewsfeedState.failureUsers(String err) = _FailureUsers;
  
  // Tag vendor states
  const factory NewsfeedState.loadingTagVendor() = _LoadingTagVendor;
  const factory NewsfeedState.successTagVendor() = _SuccessTagVendor;
  const factory NewsfeedState.failureTagVendor(String err) = _FailureTagVendor;
  
  // Tag product states
  const factory NewsfeedState.loadingTagProduct() = _LoadingTagProduct;
  const factory NewsfeedState.successTagProduct() = _SuccessTagProduct;
  const factory NewsfeedState.failureTagProduct(String err) = _FailureTagProduct;
}