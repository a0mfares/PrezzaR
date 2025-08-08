import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prezza/core/helper/network.dart';
import 'package:prezza/core/service/failure_services.dart';
import 'package:prezza/features/newsfeed/data/models/comment_model.dart';
import 'package:prezza/features/newsfeed/data/models/post_model.dart';
import 'package:prezza/features/newsfeed/data/models/product_tag_model.dart';
import 'package:prezza/features/newsfeed/data/models/user_like_model.dart';
import 'package:prezza/features/newsfeed/data/models/user_search_model.dart';
import 'package:prezza/features/newsfeed/data/models/vendor_tag_model.dart';
import 'package:prezza/features/newsfeed/domain/entities/product_tag_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/user_search_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/vendor_tag_entity.dart';
import 'package:prezza/features/newsfeed/domain/repositories/newsfeed_repo.dart';

import '../../../../core/helper/tools.dart';
import '../../domain/entities/comment_entity.dart';
import '../../domain/entities/post_entity.dart';
import '../../domain/entities/user_like_entity.dart';
import '../datasources/newsfeed_service.dart';
import '../models/profile_social_model.dart';

class NewsfeedRepoImpl extends NewsfeedRepo {
  final NewsfeedService _service;

  NewsfeedRepoImpl(this._service);

  @override
  Future<Either<FailureServices, void>> addComentReply(
      Map<String, dynamic> body) {
    return execute(() => _service.addComentReply(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addComment(Map<String, dynamic> body) {
    return execute(() => _service.addComment(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addLikePost(Map<String, dynamic> body) {
    return execute(() => _service.addLike(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addLikeOnComment(
      Map<String, dynamic> body) {
    return execute(() => _service.addLikeOnComment(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addStory(Map<String, dynamic> body) {
    return execute(() => _service.addStory(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> addTagPost(Map<String, dynamic> body) {
    return execute(() => _service.addTagPost(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> createPost(
      Map<String, dynamic> body, Function(int sent, int total) onProgress) {
    return execute(() => _service.createPost(
        bearerToken, FormData.fromMap(body), (sent, total) => onProgress));
  }

  @override
  Future<Either<FailureServices, void>> deleteComment(
      Map<String, dynamic> body) {
    return execute(() => _service.deleteComment(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> deleteCommentReply(
      Map<String, dynamic> body) {
    return execute(() => _service.deleteCommentReply(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> deleteStory(Map<String, dynamic> body) {
    return execute(() => _service.deleteStory(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> editComment(Map<String, dynamic> body) {
    return execute(() => _service.editComment(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> editPost(Map<String, dynamic> body) {
    return execute(() => _service.editPost(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> followUser(Map<String, dynamic> body) {
    return execute(() => _service.followUser(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, List<CommentEntity>>> getComments(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getComments(bearerToken, query);
      return List<CommentEntity>.from(result.data['data']['data']
          .map((e) => CommentEntity.fromModel(CommentModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<UserLikeEntity>>> getLikesForPost(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getLikesForPost(bearerToken, query);
      return List<UserLikeEntity>.from(result.data['data']['data']
          .map((e) => UserLikeEntity.fromModel(UserLikeModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<PostEntity>>> getPosts(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getPosts(bearerToken, query);
      return List<PostEntity>.from(result.data['data']['data']
          .map((e) => PostEntity.fromModel(PostModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<PostEntity>>> getPostsBlog(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getPostsBlog(bearerToken, query);
      return List<PostEntity>.from(result.data['data']['data']
          .map((e) => PostEntity.fromModel(PostModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<PostEntity>>> getSavedPosts(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getSavedPosts(bearerToken, query);
      final postsData = result.data['data']?['data'] ?? [];
      return List<PostEntity>.from(
        postsData.map((e) => PostEntity.fromModel(PostModel.fromMap(e))),
      );
    });
  }

  @override
  Future<Either<FailureServices, void>> getStories(Map<String, dynamic> query) {
    return execute(() => _service.getNewsStories(bearerToken, query));
  }

  @override
  Future<Either<FailureServices, List<CommentEntity>>> getReplies(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getReplies(bearerToken, query);
      return List<CommentEntity>.from(result.data['data']['data']
          .map((e) => CommentEntity.fromModel(CommentModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, void>> getUserFollower(
      Map<String, dynamic> query) {
    return execute(() => _service.getUserFollower(bearerToken, query));
  }

  @override
  Future<Either<FailureServices, void>> getUserFollowing(
      Map<String, dynamic> query) {
    return execute(() => _service.getUserFollowing(bearerToken, query));
  }

  @override
  Future<Either<FailureServices, ProfileSocialEntity>> getUserInfo(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getUserInfo(bearerToken, query);
      return ProfileSocialEntity.fromModel(
          ProfileSocialModel.fromMap(result.data['data']));
    });
  }

  @override
  Future<Either<FailureServices, void>> savePost(Map<String, dynamic> body) {
    return execute(() => _service.savePost(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> unFollowUser(
      Map<String, dynamic> body) {
    return execute(() => _service.unFollowUser(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> unLikeComment(
      Map<String, dynamic> body) {
    return execute(() => _service.unLikeComment(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, void>> unLikePost(Map<String, dynamic> body) {
    return execute(() => _service.unLikePost(bearerToken, body));
  }

  @override
  Future<Either<FailureServices, List<UserSearchEntity>>> getUsers(
      Map<String, dynamic> query) {
    return execute(
      () async {
        final result = await _service.getUsers(query);
        return List<UserSearchEntity>.from(
          result.data['data'].map(
            (e) => UserSearchEntity.fromModel(
              UserSearchModel.fromMap(e),
            ),
          ),
        );
      },
    );
  }

  @override
  Future<Either<FailureServices, List<ProductTagEntity>>> getTagProducts(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getTagProducts(query);
      return List<ProductTagEntity>.from(result.data['data']
          .map((e) => ProductTagEntity.fromModel(ProductTagModel.fromMap(e))));
    });
  }

  @override
  Future<Either<FailureServices, List<VendorTagEntity>>> getTagVendors(
      Map<String, dynamic> query) {
    return execute(() async {
      final result = await _service.getTagVendor(query);
      return List<VendorTagEntity>.from(result.data['data']
          .map((e) => VendorTagEntity.fromModel(VendorTagModel.fromMap(e))));
    });
  }
}
