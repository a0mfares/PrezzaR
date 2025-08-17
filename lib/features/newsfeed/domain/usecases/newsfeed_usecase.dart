import 'package:dartz/dartz.dart';
import 'package:prezza/core/helper/usecase_helper.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/newsfeed/domain/entities/follower_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/product_tag_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/vendor_tag_entity.dart';
import 'package:prezza/features/newsfeed/domain/repositories/newsfeed_repo.dart';

import '../entities/comment_entity.dart';
import '../entities/post_entity.dart';
import '../entities/profile_social_entity.dart';
import '../entities/user_like_entity.dart';
import '../entities/user_search_entity.dart';

class AddCommentReplyUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  AddCommentReplyUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addComentReply(parm);
  }
}

class AddCommentUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  AddCommentUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addComment(parm);
  }
}

class AddLikePostUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  AddLikePostUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addLikePost(parm);
  }
}

class AddLikeOnCommentUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  AddLikeOnCommentUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addLikeOnComment(parm);
  }
}

class AddStoryUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  AddStoryUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addStory(parm);
  }
}

class AddTagPostUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  AddTagPostUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.addTagPost(parm);
  }
}

class CreatePostUsecase extends UsecaseHelperProgress<void> {
  final NewsfeedRepo _repo;

  CreatePostUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {},
      required Function(int sent, int total) onProgress}) {
    return _repo.createPost(parm, onProgress);
  }
}

class DeleteCommentUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  DeleteCommentUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteComment(parm);
  }
}

class DeleteCommentReplyUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  DeleteCommentReplyUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteCommentReply(parm);
  }
}

class DeleteStoryUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  DeleteStoryUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.deleteStory(parm);
  }
}

class EditCommentUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  EditCommentUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.editComment(parm);
  }
}

class EditPostUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  EditPostUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.editPost(parm);
  }
}

class FollowUserUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  FollowUserUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.followUser(parm);
  }
}

class GetCommentsUsecase extends UsecaseHelper<List<CommentEntity>> {
  final NewsfeedRepo _repo;

  GetCommentsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<CommentEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getComments(parm);
  }
}

class GetLikesForPostUsecase extends UsecaseHelper<List<UserLikeEntity>> {
  final NewsfeedRepo _repo;

  GetLikesForPostUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<UserLikeEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getLikesForPost(parm);
  }
}

class GetPostsUsecase extends UsecaseHelper<List<PostEntity>> {
  final NewsfeedRepo _repo;

  GetPostsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<PostEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getPosts(parm);
  }
}

class GetPostsBlogUsecase extends UsecaseHelper<List<PostEntity>> {
  final NewsfeedRepo _repo;

  GetPostsBlogUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<PostEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getPostsBlog(parm);
  }
}

class GetSavedPostsUsecase extends UsecaseHelper<List<PostEntity>> {
  final NewsfeedRepo _repo;

  GetSavedPostsUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<PostEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getSavedPosts(parm);
  }
}

class GetStoriesUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  GetStoriesUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getStories(parm);
  }
}

class GetRepliesUsecase extends UsecaseHelper<List<CommentEntity>> {
  final NewsfeedRepo _repo;

  GetRepliesUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<CommentEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getReplies(parm);
  }
}

class GetUserFollowerUsecase extends UsecaseHelper<List<FollowerEntity>> {
  final NewsfeedRepo _repo;

  GetUserFollowerUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<FollowerEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getUserFollower(parm);
  }
}

class GetUserFollowingUsecase extends UsecaseHelper<List<FollowerEntity>> {
  final NewsfeedRepo _repo;

  GetUserFollowingUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<FollowerEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getUserFollowing(parm);
  }
}

class GetUserInfoSocialUsecase extends UsecaseHelper<ProfileSocialEntity> {
  final NewsfeedRepo _repo;

  GetUserInfoSocialUsecase(this._repo);

  @override
  Future<Either<FailureServices, ProfileSocialEntity>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getUserInfo(parm);
  }
}

class SavePostUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  SavePostUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.savePost(parm);
  }
}

class UnFollowUserUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  UnFollowUserUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.unFollowUser(parm);
  }
}

class UnLikeCommentUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  UnLikeCommentUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.unLikeComment(parm);
  }
}

class UnLikePostUsecase extends UsecaseHelper<void> {
  final NewsfeedRepo _repo;

  UnLikePostUsecase(this._repo);

  @override
  Future<Either<FailureServices, void>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.unLikePost(parm);
  }
}

class GetUsersUsecase extends UsecaseHelper<List<UserSearchEntity>> {
  final NewsfeedRepo _repo;

  GetUsersUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<UserSearchEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getUsers(parm);
  }
}

class GetTagVendorUsecase extends UsecaseHelper<List<VendorTagEntity>> {
  final NewsfeedRepo _repo;

  GetTagVendorUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<VendorTagEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getTagVendors(parm);
  }
}

class GetTagProductUsecase extends UsecaseHelper<List<ProductTagEntity>> {
  final NewsfeedRepo _repo;

  GetTagProductUsecase(this._repo);

  @override
  Future<Either<FailureServices, List<ProductTagEntity>>> call(
      {Map<String, dynamic> parm = const {}}) {
    return _repo.getTagProducts(parm);
  }
}
