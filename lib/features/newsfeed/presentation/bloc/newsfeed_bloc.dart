import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/newsfeed/domain/entities/follower_entity.dart';
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

  // Use cases
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

  // Controllers for form inputs
  final TextEditingController contentController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController searchController = TextEditingController();

  // Internal state (consider moving to separate state classes)
  File? _selectedImage;
  Uint8List? _selectedImageBytes;
  List<PostEntity> posts = [];
  List<PostEntity> savedPosts = [];
  List<PostEntity> userPosts = [];

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
    this._getTagProductUsecase,
  ) : super(const NewsfeedState.initial()) {
    // Register event handlers
    on<_PickupImage>(_onPickupImage);
    on<_CreatePost>(_onCreatePost);
    on<_FetchPosts>(_onFetchPosts);
    on<_GetUsers>(_onGetUsers);
    on<_Follow>(_onFollow);
    on<_UnFollow>(_onUnFollow);
    on<_GetUserFollowers>(_onGetUserFollowers);
    on<_GetUserFollowing>(_onGetUserFollowing);
    on<_GetUserPosts>(_onGetUserPosts);
    on<_GetSavedPosts>(_onGetSavedPosts);
    on<_SavePost>(_onSavePost);
    on<_GetUserInfo>(_onGetUserInfo);
    on<_LikePost>(_onLikePost);
    on<_UnLikePost>(_onUnLikePost);
    on<_GetLikes>(_onGetLikes);
    on<_AddComment>(_onAddComment);
    on<_GetComments>(_onGetComments);
    on<_ReplayComment>(_onReplayComment);
    on<_GetCommentReplaies>(_onGetCommentReplies);
    on<_LikeComment>(_onLikeComment);
    on<_UnLikeCmment>(_onUnLikeComment);
    on<_DeleteComment>(_onDeleteComment);
    on<_DeleteReplayComment>(_onDeleteReplayComment);
    on<_GetTagVendor>(_onGetTagVendor);
    on<_GetTagProduct>(_onGetTagProduct);
  }

  @override
  Future<void> close() {
    contentController.dispose();
    commentController.dispose();
    searchController.dispose();
    return super.close();
  }

  // Event handlers

  Future<void> _onPickupImage(
      _PickupImage event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loading());
      _selectedImage = event.img;
      _selectedImageBytes = await event.img.readAsBytes();
      emit(NewsfeedState.imageSelected(_selectedImage!, _selectedImageBytes!));
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onCreatePost(
      _CreatePost event, Emitter<NewsfeedState> emit) async {
    if (_selectedImage == null || contentController.text.trim().isEmpty) {
      emit(const NewsfeedState.failure('Image and content are required'));
      return;
    }

    try {
      emit(const NewsfeedState.progress(0));

      final multipartFile = await MultipartFile.fromFile(_selectedImage!.path);

      final result = await _createPostUsecase(
        parm: {
          'images': [multipartFile],
          'contant': contentController.text
              .trim(), // Note: typo in API - 'contant' instead of 'content'
        },
        onProgress: (sent, total) {
          if (!emit.isDone) {
            final progress = (sent / total) * 100;
            emit(NewsfeedState.progress(progress));
          }
        },
      );

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          _clearPostCreationState();
          emit(const NewsfeedState.postCreated());
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onFetchPosts(
      _FetchPosts event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingPosts());

      final result = await _getPostsBlogUsecase(parm: {});

      result.fold(
        (error) {
          log('fetchPosts: Error - ${error.getMsg}');
          emit(NewsfeedState.failure(error.getMsg));
        },
        (posts) {
          log('fetchPosts: Success - ${posts.length} posts fetched');
          this.posts = posts;
          emit(NewsfeedState.postsLoaded(posts));
        },
      );
    } catch (e) {
      log('fetchPosts: Exception - $e');
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetUsers(_GetUsers event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingUsers());

      final result = await _getUsersUsecase(parm: {});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (users) => emit(NewsfeedState.usersLoaded(users)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onFollow(_Follow event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingFollow());

      final result = await _followUserUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          emit(const NewsfeedState.followSuccess());
          // Refresh posts to show updated follow status
          add(const NewsfeedEvent.fetchPosts());
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onUnFollow(_UnFollow event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingFollow());

      final result =
          await _unFollowUserUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          emit(const NewsfeedState.unfollowSuccess());
          // Refresh posts to show updated follow status
          add(const NewsfeedEvent.fetchPosts());
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetUserFollowers(
      _GetUserFollowers event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingFollowers());

      final result =
          await _getUserFollowerUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (followers) => emit(NewsfeedState.followersLoaded(followers)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetUserFollowing(
      _GetUserFollowing event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingFollowing());

      final result =
          await _getUserFollowingUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (following) => emit(NewsfeedState.followingLoaded(following)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetUserPosts(
      _GetUserPosts event, Emitter<NewsfeedState> emit) async {
    try {
      log('getUserPosts: Starting for user ${event.uuid}');
      emit(const NewsfeedState.loadingPosts());

      final result = await _getPostsUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) {
          log('getUserPosts: Error - ${error.getMsg}');
          emit(NewsfeedState.failure(error.getMsg));
        },
        (userPosts) {
          log('getUserPosts: Success - ${userPosts.length} posts loaded');
          this.userPosts = userPosts;
          emit(NewsfeedState.userPostsLoaded(userPosts));
        },
      );
    } catch (e) {
      log('getUserPosts: Exception - $e');
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetSavedPosts(
      _GetSavedPosts event, Emitter<NewsfeedState> emit) async {
    try {
      log('getSavedPosts: Starting for user ${event.uuid}');
      emit(const NewsfeedState.loadingSavedPosts());

      final result =
          await _getSavedPostsUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) {
          log('getSavedPosts: Error - ${error.getMsg}');
          emit(NewsfeedState.failure(error.getMsg));
        },
        (savedPosts) {
          log('getSavedPosts: Success - ${savedPosts.length} saved posts loaded');
          this.savedPosts = savedPosts;
          emit(NewsfeedState.savedPostsLoaded(savedPosts));
        },
      );
    } catch (e) {
      log('getSavedPosts: Exception - $e');
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onSavePost(_SavePost event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingSavePost());

      final result = await _savePostUsecase(parm: {'uuid': event.uuid});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) => emit(const NewsfeedState.postSaved()),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetUserInfo(
      _GetUserInfo event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingProfile());

      final result = await _getUserInfoUsecase(parm: {'user_uuid': event.uuid});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (profile) => emit(NewsfeedState.profileLoaded(profile)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onLikePost(_LikePost event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingLike());

      final result = await _addLikePostUsecase(parm: {'uuid': event.postId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) => emit(const NewsfeedState.postLiked()),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onUnLikePost(
      _UnLikePost event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingLike());

      final result = await _unLikePostUsecase(parm: {'uuid': event.postId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) => emit(const NewsfeedState.postUnliked()),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetLikes(_GetLikes event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingLikes());

      final result =
          await _getLikesForPostUsecase(parm: {'uuid': event.postId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (likes) => emit(NewsfeedState.likesLoaded(event.postId, likes)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onAddComment(
      _AddComment event, Emitter<NewsfeedState> emit) async {
    if (commentController.text.trim().isEmpty) {
      emit(const NewsfeedState.failure('Comment cannot be empty'));
      return;
    }

    try {
      emit(const NewsfeedState.loadingAddComment());

      final result = await _addCommentUsecase(parm: {
        'uuid': event.postId,
        'content': commentController.text.trim(),
      });

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          commentController.clear();
          emit(const NewsfeedState.commentAdded());
          // Refresh comments
          add(NewsfeedEvent.getComments(event.postId));
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetComments(
      _GetComments event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingComments());

      final result = await _getCommentsUsecase(parm: {'uuid': event.postId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (comments) =>
            emit(NewsfeedState.commentsLoaded(event.postId, comments)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onReplayComment(
      _ReplayComment event, Emitter<NewsfeedState> emit) async {
    if (commentController.text.trim().isEmpty) {
      emit(const NewsfeedState.failure('Reply cannot be empty'));
      return;
    }

    try {
      emit(const NewsfeedState.loadingAddComment());

      final result = await _addCommentReplyUsecase(parm: {
        'uuid': event.commentId,
        'content': commentController.text.trim(),
      });

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          commentController.clear();
          emit(const NewsfeedState.replyAdded());
          // Refresh replies
          add(NewsfeedEvent.getCommentReplaies(event.commentId));
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetCommentReplies(
      _GetCommentReplaies event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingReplies());

      final result = await _getRepliesUsecase(parm: {'uuid': event.commentId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (replies) => emit(NewsfeedState.repliesLoaded(replies)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onLikeComment(
      _LikeComment event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingCommentLike());

      final result =
          await _addLikeOnCommentUsecase(parm: {'uuid': event.commentId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          emit(const NewsfeedState.commentLiked());
          // Refresh comments to show updated like status
          add(NewsfeedEvent.getComments(event.postId));
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onUnLikeComment(
      _UnLikeCmment event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingCommentLike());

      final result =
          await _unLikeCommentUsecase(parm: {'uuid': event.commentId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          emit(const NewsfeedState.commentUnliked());
          // Refresh comments to show updated like status
          add(NewsfeedEvent.getComments(event.postId));
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onDeleteComment(
      _DeleteComment event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingDeleteComment());

      final result = await _deleteCommentUsecase(parm: {
        'uuid': event.commentId,
        'content': event.content,
      });

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          emit(const NewsfeedState.commentDeleted());
          // Refresh comments
          add(NewsfeedEvent.getComments(event.postId));
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onDeleteReplayComment(
      _DeleteReplayComment event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingDeleteComment());

      final result =
          await _deleteCommentReplyUsecase(parm: {'uuid': event.replyId});

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (success) {
          emit(const NewsfeedState.replyDeleted());
          // Refresh replies
          add(NewsfeedEvent.getCommentReplaies(event.commentId));
        },
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetTagVendor(
      _GetTagVendor event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingVendors());

      final result = await _getTagVendorUsecase(parm: {
        'business_name': searchController.text.trim(),
      });

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (vendors) => emit(NewsfeedState.vendorsLoaded(vendors)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  Future<void> _onGetTagProduct(
      _GetTagProduct event, Emitter<NewsfeedState> emit) async {
    try {
      emit(const NewsfeedState.loadingProducts());

      final result = await _getTagProductUsecase(parm: {
        'product_name': searchController.text.trim(),
      });

      result.fold(
        (error) => emit(NewsfeedState.failure(error.getMsg)),
        (products) => emit(NewsfeedState.productsLoaded(products)),
      );
    } catch (e) {
      emit(NewsfeedState.failure(e.toString()));
    }
  }

  // Helper methods
  void _clearPostCreationState() {
    _selectedImage = null;
    _selectedImageBytes = null;
    contentController.clear();
  }

  // Getters for UI
  File? get selectedImage => _selectedImage;
  Uint8List? get selectedImageBytes => _selectedImageBytes;
}
