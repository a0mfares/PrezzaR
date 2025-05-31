import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/review_entity.dart';
import '../../domain/usecases/review_usecase.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final AddProductReviewUsecase _addProductReviewUsecase;
  final GetProductReviewsUsecase _getProductReviewsUsecase;

  List<ReviewEntity> reviews = [];
  final TextEditingController title = TextEditingController();
  final TextEditingController review = TextEditingController();
  int star = 0;
  File reviewImg = File('');
  ReviewBloc(this._addProductReviewUsecase, this._getProductReviewsUsecase)
      : super(_Initial()) {
    on<ReviewEvent>((event, emit) async {
      await event.maybeWhen(
        addProductReview: (productId) async {
          emit(const ReviewState.loading());

          try {
            final Completer<MultipartFile> img = Completer();
            await MultipartFile.fromFile(reviewImg.path).then((v) {
              img.complete(v);
            });
            final result = await _addProductReviewUsecase(parm: {
              'product_uuid': productId,
              'review_title': title.text,
              'review': review.text,
              'stars': star,
              'image': [await img.future],
            });
            result.fold(
              (err) {
                emit(ReviewState.failure(err.getMsg));
              },
              (res) {
                emit(const ReviewState.success());
              },
            );
          } catch (e) {
            emit(ReviewState.failure(e.toString()));
          }
        },
        getProductReviews: (productId) async {},
        orElse: () {},
      );
    });
  }
}
