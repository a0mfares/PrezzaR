part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.success() = _Success;
  const factory ProductState.sucessAdded() = _SucessAdded;
  const factory ProductState.deleteSuccess() = _DeleteSuccess;
  const factory ProductState.ereaseProductDetails() = _EreaseProductDetails;
  const factory ProductState.successCateegory() = _SuccessCateegory;
  const factory ProductState.loadingCategory() = _LoadingCategory;

  const factory ProductState.failure(String err) = _Failure;
  const factory ProductState.updateUi() = _UpdateUi;
  const factory ProductState.successUi() = _SuccessUi;
  const factory ProductState.successCreated() = _SuccessCreated;
  const factory ProductState.failureProductDetails(String err) =
      _FailureProductDetails;
  const factory ProductState.failureProducts(String err) = _FailureProducts;
}
