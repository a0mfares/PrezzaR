import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/category/domain/entities/sponsors_entity.dart';
import 'package:prezza/features/category/domain/usecases/category_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUsecase _getCategoriesUsecase;
  final GetSponsorsUsecase _getSponsorsUsecase;
  List<SponsorsEntity> sponsors = [];
  List<CategoryEntity> categories = [];
  static CategoryBloc get(context) => BlocProvider.of(context);
  CategoryBloc(this._getCategoriesUsecase, this._getSponsorsUsecase)
      : super(const _Initial()) {
    on<CategoryEvent>((event, emit) async {
      await event.maybeWhen(
        getCategories: (isBooking) async {
          emit(const _Loading());

          final result = await _getCategoriesUsecase(
            parm: {'booking': isBooking},
          );
          result.fold(
            (err) {
              emit(_failureCategory(err.getMsg));
            },
            (response) {
              categories = response;
              HiveStorage.set(kCategories, response);
              emit(const _SuccessCategory());
            },
          );
        },
        getSponsors: () async {
          emit(const _Loading());
          final result = await _getSponsorsUsecase();
          result.fold(
            (err) {
              emit(_Failure(err.getMsg));
            },
            (response) {
              sponsors = response;
              emit(const _Success());
            },
          );
        },
        orElse: () {},
      );
    });
  }
}
