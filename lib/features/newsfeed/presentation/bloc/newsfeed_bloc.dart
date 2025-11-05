// newsfeed_bloc.dart
import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/newsfeed/domain/entities/post_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/profile_social_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/user_search_entity.dart';
import 'package:prezza/features/newsfeed/domain/entities/vendor_tag_entity.dart';
import 'package:prezza/features/newsfeed/domain/usecases/newsfeed_usecase.dart';

import '../../domain/entities/comment_entity.dart';
import '../../domain/entities/product_tag_entity.dart';
import '../../domain/entities/user_like_entity.dart' hide UserInfoEntity;

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

  // Separate lists for different post types
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
          emit(const NewsfeedState.loadingTagProduct());
          try {
            final result = await _getTagProductUsecase(
              parm: {
                'product_name': search.text,
              },
            );
            result.fold(
              (err) {
                emit(NewsfeedState.failureTagProduct(err.getMsg));
              },
              (res) {
                products = res;
                emit(const NewsfeedState.successTagProduct());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failureTagProduct(e.toString()));
          }
        },
        getTagVendor: () async {
          emit(const NewsfeedState.loadingTagVendor());
          try {
            final result = await _getTagVendorUsecase(
              parm: {
                'business_name': search.text,
              },
            );
            result.fold(
              (err) {
                emit(NewsfeedState.failureTagVendor(err.getMsg));
              },
              (res) {
                vendors = res;
                emit(const NewsfeedState.successTagVendor());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failureTagVendor(e.toString()));
          }
        },
        pickupImage: (result) async {
          emit(const NewsfeedState.loadingImage());
          img = result;
          imgUint8 = await result.readAsBytes();
          emit(const NewsfeedState.successImage());
        },
        getUsers: () async {
          emit(const NewsfeedState.loadingUsers());
          try {
            final result = await _getUsersUsecase(parm: {});
            result.fold((err) {
              emit(NewsfeedState.failureUsers(err.getMsg));
            }, (res) {
              users = res;
              emit(const NewsfeedState.successUsers());
            });
          } catch (e) {
            emit(NewsfeedState.failureUsers(e.toString()));
          }
        },
        follow: (uuid) async {
          emit(const NewsfeedState.loadingFollow());
          try {
            final result = await _followUserUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failureFollow(err.getMsg));
            }, (res) {
              emit(const NewsfeedState.successFollow());
              add(const NewsfeedEvent.fetchPosts());
            });
          } catch (e) {
            emit(NewsfeedState.failureFollow(e.toString()));
          }
        },
        unFollow: (uuid) async {
          emit(const NewsfeedState.loadingUnfollow());
          try {
            final result = await _unFollowUserUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failureUnfollow(err.getMsg));
            }, (res) {
              emit(const NewsfeedState.successUnfollow());
              add(const NewsfeedEvent.fetchPosts());
            });
          } catch (e) {
            emit(NewsfeedState.failureUnfollow(e.toString()));
          }
        },
        createPost: () async {
          emit(const NewsfeedState.creatingPost(0));
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
                  log('Upload progress: $progress%');
                  emit(NewsfeedState.creatingPost(progress));
                });
            result.fold(
              (err) {
                emit(NewsfeedState.failureCreatePost(err.getMsg));
              },
              (res) {
                img = File('');
                imgUint8 = Uint8List(0);
                content.clear();
                emit(const NewsfeedState.successCreatePost());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failureCreatePost(e.toString()));
          }
        },
        fetchPosts: () async {
          posts.clear();
          emit(const NewsfeedState.loadingPosts());
          
          log('fetchPosts: Fetching posts...');
          try {
            final result = await _getPostsBlogUsecase(parm: {});
            result.fold((err) {
              log('fetchPosts: Error - ${err.getMsg}');
              emit(NewsfeedState.failurePosts(err.getMsg));
            }, (res) {
              log('fetchPosts: Success - Number of posts fetched: ${res.length}');
              posts = res;
              emit(const NewsfeedState.successPosts());
            });
          } catch (e) {
            log('fetchPosts: Exception - ${e.toString()}');
            emit(NewsfeedState.failurePosts(e.toString()));
          }
        },
        getUserPosts: (uuid) async {
          userPosts.clear();
          emit(const NewsfeedState.loadingUserPosts());
          try {
            final result = await _getPostsUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failureUserPosts(err.getMsg));
            }, (res) {
              log('getUserPosts: Number of posts fetched: ${res.length}');
              userPosts = res;
              emit(const NewsfeedState.successUserPosts());
            });
          } catch (e) {
            emit(NewsfeedState.failureUserPosts(e.toString()));
          }
        },
        getSavedPosts: (uuid) async {
          savedPosts.clear();
          emit(const NewsfeedState.loadingSavedPosts());
          try {
            final result = await _getSavedPostsUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold(
              (err) {
                emit(NewsfeedState.failureSavedPosts(err.getMsg));
              },
              (res) {
                savedPosts = res;
                emit(const NewsfeedState.successSavedPosts());
              },
            );
          } catch (e) {
            emit(NewsfeedState.failureSavedPosts(e.toString()));
          }
        },
        savePost: (uuid) async {
          // Update in all lists where the post might exist
          _updatePostInAllLists(uuid, (post) {
            return post.copyWith(is_saved: !post.is_saved);
          });
          emit(const NewsfeedState.successPostSaved());

          try {
            final result = await _savePostUsecase(parm: {'uuid': uuid});
            result.fold((err) {
              // Revert on error
              _updatePostInAllLists(uuid, (post) {
                return post.copyWith(is_saved: !post.is_saved);
              });
              emit(NewsfeedState.failurePostSaved(err.getMsg));
            }, (res) {
              emit(const NewsfeedState.successPostSaved());
            });
          } catch (e) {
            // Revert on exception
            _updatePostInAllLists(uuid, (post) {
              return post.copyWith(is_saved: !post.is_saved);
            });
            emit(NewsfeedState.failurePostSaved(e.toString()));
          }
        },
        getUserInfo: (uuid) async {
          emit(const NewsfeedState.loadingProfile());
          try {
            final result = await _getUserInfoUsecase(parm: {
              'user_uuid': uuid,
            });
            result.fold((err) {
              emit(NewsfeedState.failureProfile(err.getMsg));
            }, (res) {
              profile = res;
              emit(const NewsfeedState.successProfile());
            });
          } catch (e) {
            emit(NewsfeedState.failureProfile(e.toString()));
          }
        },
        likePost: (postId) async {
          // Update in all lists where the post might exist
          _updatePostInAllLists(postId, (post) {
            final newLikeStatus = !post.is_liked;
            final newLikeCount = newLikeStatus 
                ? post.number_of_likes + 1 
                : post.number_of_likes - 1;
            return post.copyWith(
              is_liked: newLikeStatus,
              number_of_likes: newLikeCount,
            );
          });
          emit(const NewsfeedState.successLikePost());

          try {
            final result = await _addLikePostUsecase(parm: {'uuid': postId});
            result.fold((err) {
              // Revert on error
              _updatePostInAllLists(postId, (post) {
                final newLikeStatus = !post.is_liked;
                final newLikeCount = newLikeStatus 
                    ? post.number_of_likes + 1 
                    : post.number_of_likes - 1;
                return post.copyWith(
                  is_liked: newLikeStatus,
                  number_of_likes: newLikeCount,
                );
              });
              emit(NewsfeedState.failureLikePost(err.getMsg));
            }, (res) {
              emit(const NewsfeedState.successLikePost());
            });
          } catch (e) {
            // Revert on exception
            _updatePostInAllLists(postId, (post) {
              final newLikeStatus = !post.is_liked;
              final newLikeCount = newLikeStatus 
                  ? post.number_of_likes + 1 
                  : post.number_of_likes - 1;
              return post.copyWith(
                is_liked: newLikeStatus,
                number_of_likes: newLikeCount,
              );
            });
            emit(NewsfeedState.failureLikePost(e.toString()));
          }
        },
        unLikePost: (postId) async {
          // Update in all lists where the post might exist
          _updatePostInAllLists(postId, (post) {
            final newLikeStatus = !post.is_liked;
            final newLikeCount = newLikeStatus 
                ? post.number_of_likes + 1 
                : post.number_of_likes - 1;
            return post.copyWith(
              is_liked: newLikeStatus,
              number_of_likes: newLikeCount,
            );
          });
          emit(const NewsfeedState.successUnlikePost());

          try {
            final result = await _unLikePostUsecase(parm: {'uuid': postId});
            result.fold((err) {
              // Revert on error
              _updatePostInAllLists(postId, (post) {
                final newLikeStatus = !post.is_liked;
                final newLikeCount = newLikeStatus 
                    ? post.number_of_likes + 1 
                    : post.number_of_likes - 1;
                return post.copyWith(
                  is_liked: newLikeStatus,
                  number_of_likes: newLikeCount,
                );
              });
              emit(NewsfeedState.failureUnlikePost(err.getMsg));
            }, (res) {
              emit(const NewsfeedState.successUnlikePost());
            });
          } catch (e) {
            // Revert on exception
            _updatePostInAllLists(postId, (post) {
              final newLikeStatus = !post.is_liked;
              final newLikeCount = newLikeStatus 
                  ? post.number_of_likes + 1 
                  : post.number_of_likes - 1;
              return post.copyWith(
                is_liked: newLikeStatus,
                number_of_likes: newLikeCount,
              );
            });
            emit(NewsfeedState.failureUnlikePost(e.toString()));
          }
        },
        getLikes: (postId) async {
          emit(const NewsfeedState.loadingLikes());
          try {
            final result =
                await _getLikesForPostUsecase(parm: {'uuid': postId});

            result.fold((err) {
              emit(NewsfeedState.failureLikes(err.getMsg));
            }, (res) {
              userLikes = res;
              emit(const NewsfeedState.successLikes());
            });
          } catch (e) {
            emit(NewsfeedState.failureLikes(e.toString()));
          }
        },
        getComments: (postId) async {
          emit(const NewsfeedState.loadingComments());
          try {
            final result = await _getCommentsUsecase(parm: {'uuid': postId});

            result.fold((err) {
              emit(NewsfeedState.failureComments(err.getMsg));
            }, (res) {
              comments = res;
              emit(const NewsfeedState.successComments());
            });
          } catch (e) {
            emit(NewsfeedState.failureComments(e.toString()));
          }
        },
        getCommentReplaies: (commentId) async {
          emit(const NewsfeedState.loadingReplies());
          try {
            final result = await _getRepliesUsecase(parm: {'uuid': commentId});

            result.fold((err) {
              emit(NewsfeedState.failureReplies(err.getMsg));
            }, (res) {
              replysComment = res;
              emit(const NewsfeedState.successReplies());
            });
          } catch (e) {
            emit(NewsfeedState.failureReplies(e.toString()));
          }
        },
        addComment: (postId) async {
          final commentText = comment.text;
          if (commentText.isEmpty) return;
          
          comment.clear();
          
          // Create temporary comment
          final tempComment = CommentEntity(
            uuid: 'temp_${DateTime.now().millisecondsSinceEpoch}',
            content: commentText,
            number_of_likes: 0,
            number_of_replies: 0,
            created_at: DateTime.now().toIso8601String(),
            is_i_comment_owner: true,
            is_i_replay_owner: false,
            user_info: UserInfoEntity(
              uuid: usr.user.uuid,
              full_name: "${usr.user.first_name} ${usr.user.last_name}",
              user_name: usr.user.username,
              profile_picture_url: usr.user.profile_picture,
            ),
            is_liked: false,
          );
          
          // Optimistically add comment
          comments.insert(0, tempComment);
          emit(const NewsfeedState.successAddComment());

          try {
            final result = await _addCommentUsecase(parm: {
              'uuid': postId,
              'content': commentText,
            });
            result.fold(
              (err) {
                // Remove temp comment on error
                comments.removeWhere((c) => c.uuid == tempComment.uuid);
                emit(NewsfeedState.failureAddComment(err.getMsg));
              },
              (res) {
                // Fetch real comments to replace temp
                add(NewsfeedEvent.getComments(postId));
              },
            );
          } catch (e) {
            // Remove temp comment on exception
            comments.removeWhere((c) => c.uuid == tempComment.uuid);
            emit(NewsfeedState.failureAddComment(e.toString()));
          }
        },
        replayComment: (commentId) async {
          final commentText = comment.text;
          if (commentText.isEmpty) return;
          
          comment.clear();
          
          // Create temporary reply
          final tempReply = CommentEntity(
            uuid: 'temp_${DateTime.now().millisecondsSinceEpoch}',
            content: commentText,
            number_of_likes: 0,
            number_of_replies: 0,
            created_at: DateTime.now().toIso8601String(),
            is_i_comment_owner: false,
            is_i_replay_owner: true,
            user_info: UserInfoEntity(
              uuid: usr.user.uuid,
              full_name: "${usr.user.first_name} ${usr.user.last_name}",
              user_name: usr.user.username,
              profile_picture_url: usr.user.profile_picture,
            ),
            is_liked: false,
          );
          
          // Optimistically add reply
          replysComment.insert(0, tempReply);
          emit(const NewsfeedState.successReplyComment());

          try {
            final result = await _addCommentReplyUsecase(parm: {
              'uuid': commentId,
              'content': commentText,
            });
            result.fold(
              (err) {
                // Remove temp reply on error
                replysComment.removeWhere((c) => c.uuid == tempReply.uuid);
                emit(NewsfeedState.failureReplyComment(err.getMsg));
              },
              (res) {
                // Fetch real replies to replace temp
                add(NewsfeedEvent.getCommentReplaies(commentId));
              },
            );
          } catch (e) {
            // Remove temp reply on exception
            replysComment.removeWhere((c) => c.uuid == tempReply.uuid);
            emit(NewsfeedState.failureReplyComment(e.toString()));
          }
        },
       likeComment: (commentId, postId) async {
  final commentIndex = comments.indexWhere((c) => c.uuid == commentId);
  if (commentIndex == -1) return;
  
  final comment = comments[commentIndex];
  final newLikeStatus = !comment.is_liked;
  final newLikeCount = newLikeStatus 
      ? (comment.number_of_likes ?? 0) + 1 
      : (comment.number_of_likes ?? 0) - 1;
  
  // Optimistically update
  comments[commentIndex] = comment.copyWith(
    is_liked: newLikeStatus,
    number_of_likes: newLikeCount,
  );
  emit(const NewsfeedState.successLikeComment());

  try {
    final result = await _addLikeOnCommentUsecase(parm: {
      'uuid': commentId,
    });
    result.fold(
      (err) {
        // Revert on error
        comments[commentIndex] = comment;
        emit(NewsfeedState.failureLikeComment(err.getMsg));
      },
      (res) {
        emit(const NewsfeedState.successLikeComment());
      },
    );
  } catch (e) {
    // Revert on exception
    comments[commentIndex] = comment;
    emit(NewsfeedState.failureLikeComment(e.toString()));
  }
},unLikeCmment: (commentId, postId) async {
  final commentIndex = comments.indexWhere((c) => c.uuid == commentId);
  if (commentIndex == -1) return;
  
  final comment = comments[commentIndex];
  final newLikeStatus = !comment.is_liked;
  final newLikeCount = newLikeStatus 
      ? (comment.number_of_likes ?? 0) + 1 
      : (comment.number_of_likes ?? 0) - 1;
  
  // Optimistically update
  comments[commentIndex] = comment.copyWith(
    is_liked: newLikeStatus,
    number_of_likes: newLikeCount,
  );
  emit(const NewsfeedState.successUnlikeComment());

  try {
    final result = await _unLikeCommentUsecase(parm: {
      'uuid': commentId,
    });
    result.fold(
      (err) {
        // Revert on error
        comments[commentIndex] = comment;
        emit(NewsfeedState.failureUnlikeComment(err.getMsg));
      },
      (res) {
        emit(const NewsfeedState.successUnlikeComment());
      },
    );
  } catch (e) {
    // Revert on exception
    comments[commentIndex] = comment;
    emit(NewsfeedState.failureUnlikeComment(e.toString()));
  }
},
        deleteComment: (commentId, postId, content) async {
          final commentIndex = comments.indexWhere((c) => c.uuid == commentId);
          if (commentIndex == -1) return;
          
          final comment = comments[commentIndex];
          
          // Optimistically remove
          comments.removeAt(commentIndex);
          emit(const NewsfeedState.successDeleteComment());

          try {
            final result = await _deleteCommentUsecase(parm: {
              'uuid': commentId,
              'content': content,
            });
            result.fold(
              (err) {
                // Restore comment on error
                comments.insert(commentIndex, comment);
                emit(NewsfeedState.failureDeleteComment(err.getMsg));
              },
              (res) {
                emit(const NewsfeedState.successDeleteComment());
              },
            );
          } catch (e) {
            // Restore comment on exception
            comments.insert(commentIndex, comment);
            emit(NewsfeedState.failureDeleteComment(e.toString()));
          }
        },
        deleteReplayComment: (commentId, replyId) async {
          final replyIndex = replysComment.indexWhere((r) => r.uuid == replyId);
          if (replyIndex == -1) return;
          
          final reply = replysComment[replyIndex];
          
          // Optimistically remove
          replysComment.removeAt(replyIndex);
          emit(const NewsfeedState.successDeleteReply());

          try {
            final result = await _deleteCommentReplyUsecase(parm: {
              'uuid': replyId,
            });
            result.fold(
              (err) {
                // Restore reply on error
                replysComment.insert(replyIndex, reply);
                emit(NewsfeedState.failureDeleteReply(err.getMsg));
              },
              (res) {
                emit(const NewsfeedState.successDeleteReply());
              },
            );
          } catch (e) {
            // Restore reply on exception
            replysComment.insert(replyIndex, reply);
            emit(NewsfeedState.failureDeleteReply(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }

  // Helper method to update a post across all lists
  void _updatePostInAllLists(String uuid, PostEntity Function(PostEntity) update) {
    // Update in main posts list
    final postIndex = posts.indexWhere((post) => post.uuid == uuid);
    if (postIndex != -1) {
      posts[postIndex] = update(posts[postIndex]);
    }
    
    // Update in user posts list
    final userPostIndex = userPosts.indexWhere((post) => post.uuid == uuid);
    if (userPostIndex != -1) {
      userPosts[userPostIndex] = update(userPosts[userPostIndex]);
    }
    
    // Update in saved posts list
    final savedPostIndex = savedPosts.indexWhere((post) => post.uuid == uuid);
    if (savedPostIndex != -1) {
      savedPosts[savedPostIndex] = update(savedPosts[savedPostIndex]);
    }
  }
}