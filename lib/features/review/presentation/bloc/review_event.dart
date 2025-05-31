part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.started() = _Started;

  const factory ReviewEvent.addProductReview(String productId) =
      _AddProductReview;

  const factory ReviewEvent.getProductReviews(String productId) =
      _GetProductReviews;

  const factory ReviewEvent.selectImg() = _SelectImg;
  
}
