import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/urls.dart';

part 'newsfeed_service.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class NewsfeedService {
  factory NewsfeedService(Dio dio) = _NewsfeedService;

  @POST(Urls.createPost)
  Future<HttpResponse> createPost(
    @Header('Authorization') String token,
    @Body() FormData body,
    @SendProgress() ProgressCallback? onSendProgress,
  );

  @POST(Urls.tagPost)
  Future<HttpResponse> addTagPost(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.getUserInfoSocial)
  Future<HttpResponse> getUserInfo(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );

  @GET(Urls.getUserFeedPosts)
  Future<HttpResponse> getPosts(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @GET(Urls.getUserSavedPosts)
  Future<HttpResponse> getSavedPosts(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @POST(Urls.followers)
  Future<HttpResponse> followUser(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @DELETE(Urls.followers)
  Future<HttpResponse> unFollowUser(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.followers)
  Future<HttpResponse> getUserFollower(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @GET(Urls.following)
  Future<HttpResponse> getUserFollowing(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @GET(Urls.getNewsFeedBlogs)
  Future<HttpResponse> getPostsBlog(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @POST(Urls.newsFeedStories)
  Future<HttpResponse> addStory(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.newsFeedStories)
  Future<HttpResponse> getNewsStories(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @DELETE(Urls.newsFeedStories)
  Future<HttpResponse> deleteStory(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.comments)
  Future<HttpResponse> addComment(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @DELETE(Urls.comments)
  Future<HttpResponse> deleteComment(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.comments)
  Future<HttpResponse> getComments(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @PATCH(Urls.comments)
  Future<HttpResponse> editComment(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.commentLikes)
  Future<HttpResponse> addLikeOnComment(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @DELETE(Urls.commentLikes)
  Future<HttpResponse> unLikeComment(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @POST(Urls.commentReplys)
  Future<HttpResponse> addComentReply(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @DELETE(Urls.commentReplys)
  Future<HttpResponse> deleteCommentReply(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.commentReplys)
  Future<HttpResponse> getReplies(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @POST(Urls.postLikes)
  Future<HttpResponse> addLike(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @DELETE(Urls.postLikes)
  Future<HttpResponse> unLikePost(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.postLikes)
  Future<HttpResponse> getLikesForPost(
    @Header('Authorization') String token,
    @Queries() Map<String, dynamic> queryParams,
  );
  @POST(Urls.savePosts)
  Future<HttpResponse> savePost(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
  @GET(Urls.updatePost)
  Future<HttpResponse> editPost(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );

  @GET(Urls.users)
  Future<HttpResponse> getUsers(
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.productSearch)
  Future<HttpResponse> getTagProducts(
    @Queries() Map<String, dynamic> queries,
  );
  @GET(Urls.tagVendor)
  Future<HttpResponse> getTagVendor(
    @Queries() Map<String, dynamic> queries,
  );
}
