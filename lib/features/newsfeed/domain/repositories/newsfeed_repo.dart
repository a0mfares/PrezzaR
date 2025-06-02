import 'package:dartz/dartz.dart';
import 'package:prezza/core/service/failure_services.dart';

import '../entities/comment_entity.dart';
import '../entities/post_entity.dart';
import '../entities/product_tag_entity.dart';
import '../entities/profile_social_entity.dart';
import '../entities/user_like_entity.dart';
import '../entities/user_search_entity.dart';
import '../entities/vendor_tag_entity.dart';

abstract class NewsfeedRepo {
  Future<Either<FailureServices, void>> createPost(
      Map<String, dynamic> body, Function(int sent, int total) onProgress);
  Future<Either<FailureServices, void>> addTagPost(Map<String, dynamic> body);

  Future<Either<FailureServices, List<PostEntity>>> getPosts(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> getSavedPosts(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> followUser(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> unFollowUser(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> getUserFollower(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> getUserFollowing(
      Map<String, dynamic> query);
  Future<Either<FailureServices, List<PostEntity>>> getPostsBlog(
      Map<String, dynamic> query);
  Future<Either<FailureServices, List<UserSearchEntity>>> getUsers(
      Map<String, dynamic> query);
  Future<Either<FailureServices, ProfileSocialEntity>> getUserInfo(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> addStory(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> getStories(Map<String, dynamic> query);
  Future<Either<FailureServices, void>> deleteStory(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addComment(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> deleteComment(
      Map<String, dynamic> body);
  Future<Either<FailureServices, List<CommentEntity>>> getComments(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> editComment(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addLikeOnComment(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> unLikeComment(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> addComentReply(
      Map<String, dynamic> body);
  Future<Either<FailureServices, void>> deleteCommentReply(
      Map<String, dynamic> body);
  Future<Either<FailureServices, List<CommentEntity>>> getReplies(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> addLikePost(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> unLikePost(Map<String, dynamic> body);
  Future<Either<FailureServices, List<UserLikeEntity>>> getLikesForPost(
      Map<String, dynamic> query);
  Future<Either<FailureServices, void>> savePost(Map<String, dynamic> body);
  Future<Either<FailureServices, void>> editPost(Map<String, dynamic> body);

  Future<Either<FailureServices, List<VendorTagEntity>>> getTagVendors(
      Map<String, dynamic> query);
  Future<Either<FailureServices, List<ProductTagEntity>>> getTagProducts(
      Map<String, dynamic> query);
}
