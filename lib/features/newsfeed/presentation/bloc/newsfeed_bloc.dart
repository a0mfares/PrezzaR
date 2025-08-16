import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/auth/domain/entities/user_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/post_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/user_search_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/vendor_tag_entity.dart';
import 'package:prezza/features/newsfeed/domain/usecases/newsfeed_usecase.dart';

import '../../domain/entities/comment_entity.dart';
import '../../domain/entities/product_tag_entity.dart';
import '../../domain/entities/user_like_entity.dart';

part 'newsfeed_event.dart';
part 'newsfeed_state.dart';
part 'newsfeed_bloc.freezed.dart';

class NewsfeedBloc extends Bloc<NewsfeedEvent, NewsfeedState> {
  static NewsfeedBloc get(context) => BlocProvider.of(context);
  final AddCommentReplyUsecase _addCommentReplyUsecase;
  final AddCommentUsecase _addCommentUsecase;
  final AddLikeOnCommentUsecase _addLikeOnCommentUsecase;
  final AddLikePostUsecase _addLikePostUsecase;
  final AddStoryUsecase _addStoryUsecase;
  final AddTagPostUsecase _addTagPostUsecase;
  final CreatePostUsecase _createPostUsecase;
  final DeleteCommentUsecase _deleteCommentUsecase;
  final DeleteCommentReplyUsecase _deleteCommentReplyUsecase;
  final DeleteStoryUsecase _deleteStoryUsecase;
  final EditCommentUsecase _editCommentUsecase;
  final EditPostUsecase _editPostUsecase;
  final FollowUserUsecase _followUserUsecase;
  final GetCommentsUsecase _getCommentsUsecase;
  final GetLikesForPostUsecase _getLikesForPostUsecase;
  final GetPostsUsecase _getPostsUsecase;
  final GetPostsBlogUsecase _getPostsBlogUsecase;
  final GetSavedPostsUsecase _getSavedPostsUsecase;
  final GetStoriesUsecase _getStoriesUsecase;
  final GetRepliesUsecase _getRepliesUsecase;
  final GetUserFollowerUsecase _getUserFollowerUsecase;
  final GetUserFollowingUsecase _getUserFollowingUsecase;
  final GetUserInfoSocialUsecase _getUserInfoUsecase;
  final SavePostUsecase _savePostUsecase;
  final UnFollowUserUsecase _unFollowUserUsecase;
  final UnLikeCommentUsecase _unLikeCommentUsecase;
  final UnLikePostUsecase _unLikePostUsecase;
  final GetTagVendorUsecase _getTagVendorUsecase;
  final GetTagProductUsecase _getTagProductUsecase;
  final GetUsersUsecase _getUsersUsecase;
  Uint8List imgUint8 = Uint8List(0);
  File img = File('');
  TextEditingController content = TextEditingController();
  TextEditingController comment = TextEditingController();
  TextEditingController search = TextEditingController();
  List<UserEntity> userFollowing = [];
  List<UserEntity> userFollowers = [];
  List<PostEntity> posts = [];
  List<PostEntity> userPosts = [];
  List<PostEntity> savedPosts = [];
  ProfileSocialEntity profile = ProfileSocialEntity.empty();
  List<UserSearchEntity> users = [];
  List<UserLikeEntity> userLikes = [];
  List<CommentEntity> comments = [];
  List<CommentEntity> replysComment = [];
  List<VendorTagEntity> vendors = [];
  List<ProductTagEntity> products = [];
  int selectedVendorId = 0;
  String selectedProductId = '';
  NewsfeedBloc(
      this._addCommentReplyUsecase,
      this._addCommentUsecase,
      this._addLikeOnCommentUsecase,
      this._addLikePostUsecase,
      this._addStoryUsecase,
      this._addTagPostUsecase,
      this._createPostUsecase,
      this._deleteCommentUsecase,
      this._deleteCommentReplyUsecase,
      this._deleteStoryUsecase,
      this._editCommentUsecase,
      this._editPostUsecase,
      this._followUserUsecase,
      this._getCommentsUsecase,
      this._getLikesForPostUsecase,
      this._getPostsUsecase,
      this._getPostsBlogUsecase,
      this._getSavedPostsUsecase,
      this._getStoriesUsecase,
      this._getRepliesUsecase,
      this._getUserFollowerUsecase,
      this._getUserFollowingUsecase,
      this._getUserInfoUsecase,
      this._savePostUsecase,
      this._unFollowUserUsecase,
      this._unLikeCommentUsecase,
      this._unLikePostUsecase,
      this._getUsersUsecase,
      this._getTagVendorUsecase,
      this._getTagProductUsecase)
      : super(const _Initial()) {
    on<NewsfeedEvent>((event, emit) async {
      await event.maybeWhen(
        getTagProduct: () async {
          emit(const NewsfeedState.loading());
          try {
            final result = await _getTagProductUsecase(
              parm: {
                'product_name': search.text,
              },
            );
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                products = res;
                emit(const NewsfeedState.success());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getUserFollowing: (uuid) async {
          emit(const NewsfeedState.loadingFollowing());
          try {
            final result = await _getUserFollowingUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                // userFollowing = res;
                // emit(const NewsfeedState.successFollowing());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getUserFollowers: (uuid) async {
          emit(const NewsfeedState.loadingFollowers());
          try {
            final result = await _getUserFollowerUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                // userFollowers = res;
                // emit( NewsfeedState.successFollowers(userFollowers));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getTagVendor: () async {
          emit(const NewsfeedState.loading());
          try {
            final result = await _getTagVendorUsecase(
              parm: {
                'business_name': search.text,
              },
            );
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                vendors = res;
                emit(const NewsfeedState.success());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        pickupImage: (result) async {
          emit(const NewsfeedState.loading());
          img = result;
          imgUint8 = await result.readAsBytes();
          emit(const NewsfeedState.success());
        },
        getUsers: () async {
          emit(const NewsfeedState.loading());
          try {
            final result = await _getUsersUsecase(parm: {});
            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              users = res;
              emit(const NewsfeedState.success());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        follow: (uuid) async {
          emit(const NewsfeedState.loadingWidget());
          try {
            final result = await _followUserUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              // posts = res;
              add(const NewsfeedEvent.fetchPosts());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        unFollow: (uuid) async {
          emit(const NewsfeedState.loadingWidget());
          try {
            final result = await _unFollowUserUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              // posts = res;
              add(const NewsfeedEvent.fetchPosts());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        createPost: () async {
          emit(const NewsfeedState.progress(0));
          try {
            final Completer<MultipartFile> image = Completer();

            await MultipartFile.fromFile(img.path).then((v) {
              image.complete(v);
            });
            final reImg = await image.future;
            final result = await _createPostUsecase(
                parm: {
                  'images': [reImg],
                  'contant': content.text,
                },
                onProgress: (sent, total) {
                  double progress = (sent / total) * 100;
                  log('test');
                  emit(NewsfeedState.progress(progress));
                });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                img = File('');
                imgUint8 = Uint8List(0);
                content.clear();
                emit(const NewsfeedState.successCreated());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        fetchPosts: () async {
          posts.clear();

          emit(const NewsfeedState.loading());

          log('fetchPosts: Fetching posts...');
          try {
            final result = await _getPostsBlogUsecase(parm: {});

            log('fetchPosts: Result from _getPostsBlogUsecase: Results: \\${result.length()}');

            result.fold((err) {
              log('fetchPosts: Error - \\${err.getMsg}');
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              log('fetchPosts: Success - Number of posts fetched: \\${res}');
              posts = res;
              emit(const NewsfeedState.success());
            });
          } catch (e) {
            log('fetchPosts: Exception - \\${e.toString()}');
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getUserPosts: (uuid) async {
          log('getUserPosts: Starting for user $uuid');

          // Clear user posts specifically
          userPosts.clear();
          log('getUserPosts: User posts cleared, current length: ${userPosts.length}');

          // Emit loading state
          emit(const NewsfeedState.loadingPosts());
          log('getUserPosts: Emitted loadingPosts state');

          try {
            log('getUserPosts: Calling _getPostsUsecase with params: {user_uuid: $uuid}');

            final result = await _getPostsUsecase(parm: {
              'user_uuid': uuid,
            });

            log('getUserPosts: _getPostsUsecase completed');

            result.fold((err) {
              log('getUserPosts: Error received - ${err.getMsg}');
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              log('getUserPosts: Success - Received ${res.length} user posts');

              if (res.isEmpty) {
                log('getUserPosts: WARNING - No posts found for user $uuid');
              } else {
                log('getUserPosts: First few post IDs: ${res.take(3).map((p) => p.uuid ?? 'null').toList()}');
              }

              userPosts = res;
              log('getUserPosts: Posts assigned - userPosts: ${userPosts.length}, posts: ${posts.length}');

              // Emit success state
              emit(const NewsfeedState.success());
              log('getUserPosts: Emitted success state');
            });
          } catch (e) {
            log('getUserPosts: Exception caught - ${e.toString()}');
            emit(NewsfeedState.failure(e.toString()));
          }

          log('getUserPosts: Method completed');
        },
        getSavedPosts: (uuid) async {
          log('getSavedPosts: Starting for user $uuid');

          // Clear saved posts specifically
          savedPosts.clear();
          log('getSavedPosts: Saved posts cleared, current length: ${savedPosts.length}');

          // Emit loading state
          emit(const NewsfeedState.loadingPosts());
          log('getSavedPosts: Emitted loadingPosts state');

          try {
            log('getSavedPosts: Calling _getSavedPostsUsecase with params: {user_uuid: $uuid}');

            final result = await _getSavedPostsUsecase(parm: {
              'user_uuid': uuid,
            });

            log('getSavedPosts: _getSavedPostsUsecase completed');

            result.fold(
              (err) {
                log('getSavedPosts: Error received - ${err.getMsg}');
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                log('getSavedPosts: Success - Received ${res.length} saved posts');

                if (res.isEmpty) {
                  log('getSavedPosts: WARNING - No saved posts found for user $uuid');
                } else {
                  log('getSavedPosts: First few post IDs: ${res.take(3).map((p) => p.uuid ?? 'null').toList()}');
                }

                // Assign to savedPosts and also update main posts list
                savedPosts = res;
                log('getSavedPosts: Posts assigned - savedPosts: ${savedPosts.length}, posts: ${posts.length}');

                // Emit success state
                emit(const NewsfeedState.success());
                log('getSavedPosts: Emitted success state');
              },
            );
          } catch (e) {
            log('getSavedPosts: Exception caught - ${e.toString()}');
            emit(NewsfeedState.failure(e.toString()));
          }

          log('getSavedPosts: Method completed');
        },
        savePost: (uuid) async {
          emit(const NewsfeedState.loadingPosts());
          try {
            final result = await _savePostUsecase(parm: {
              'uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              // posts = res;
              emit(const NewsfeedState.postSaved());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getUserInfo: (uuid) async {
          emit(const NewsfeedState.loadigProfile());
          try {
            final result = await _getUserInfoUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              // posts = res;
              profile = res;
              emit(const NewsfeedState.success());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        likePost: (postId) async {
          emit(const NewsfeedState.loadingLike());
          try {
            final result = await _addLikePostUsecase(parm: {'uuid': postId});

            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              emit(const NewsfeedState.successLike());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getLikes: (postId) async {
          emit(const NewsfeedState.loadingLike());
          try {
            final result =
                await _getLikesForPostUsecase(parm: {'uuid': postId});

            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              userLikes = res;
              emit(const NewsfeedState.successLike());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getComments: (postId) async {
          emit(const NewsfeedState.loadingComment());
          try {
            final result = await _getCommentsUsecase(parm: {'uuid': postId});

            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              comments = res;
              emit(const NewsfeedState.successComment());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        getCommentReplaies: (commentId) async {
          emit(const NewsfeedState.loadingComment());
          try {
            final result = await _getRepliesUsecase(parm: {'uuid': commentId});

            result.fold((err) {
              emit(NewsfeedState.failure(err.getMsg));
            }, (res) {
              replysComment = res;
              emit(const NewsfeedState.successComment());
            });
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        addComment: (postId) async {
          emit(const NewsfeedState.loadingAddComment());
          try {
            final result = await _addCommentUsecase(parm: {
              'uuid': postId,
              'content': comment.text,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                add(NewsfeedEvent.getComments(postId));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        replayComment: (commentId) async {
          emit(const NewsfeedState.loadingAddComment());
          try {
            final result = await _addCommentReplyUsecase(parm: {
              'uuid': commentId,
              'content': comment.text,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                add(NewsfeedEvent.getCommentReplaies(commentId));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        likeComment: (commentId, postId) async {
          emit(const NewsfeedState.loadingComment());
          try {
            final result = await _addLikeOnCommentUsecase(parm: {
              'uuid': commentId,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                add(NewsfeedEvent.getComments(postId));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        unLikeCmment: (commentId, postId) async {
          emit(const NewsfeedState.loadingComment());
          try {
            final result = await _unLikeCommentUsecase(parm: {
              'uuid': commentId,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                add(NewsfeedEvent.getComments(postId));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        deleteComment: (commentId, postId, content) async {
          emit(const NewsfeedState.loadingComment());
          try {
            final result = await _deleteCommentUsecase(parm: {
              'uuid': commentId,
              'content': content,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                add(NewsfeedEvent.getComments(postId));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        deleteReplayComment: (commentId, replyId) async {
          emit(const NewsfeedState.loadingComment());
          try {
            final result = await _deleteCommentReplyUsecase(parm: {
              'uuid': replyId,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failure(err.getMsg));
              },
              (res) {
                add(NewsfeedEvent.getCommentReplaies(commentId));
              },
            );
          } catch (e) {
            emit(NewsfeedState.failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
