part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.success() = _Success;
  const factory CategoryState.loadingCategory() = _LoadingCategory;
  const factory CategoryState.successCategory() = _SuccessCategory;

  const factory CategoryState.failure(String err) = _Failure;
  const factory CategoryState.failureCategory(String err) = _failureCategory;
}
