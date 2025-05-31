import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/favorites/domain/usecases/fav_usecase.dart';

import '../../domain/entities/favvendor_entity.dart';

part 'fav_event.dart';
part 'fav_state.dart';
part 'fav_bloc.freezed.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  static FavBloc get(context) => BlocProvider.of(context);
  final AddFavVendorUsecase _addFavVendorUsecase;
  final DeleteFavVendorUsecase _deleteFavVendorUsecase;
  final GetFavVendorUsecase _getFavVendorUsecase;
  List<FavVendorEntity> favVendors = [];

  // bool  alreadyInFav(String id) => favVendors.firstWhere((e)=> e.uuid))
  FavBloc(this._addFavVendorUsecase, this._deleteFavVendorUsecase,
      this._getFavVendorUsecase)
      : super(const _Initial()) {
    on<FavEvent>((event, emit) async {
      await event.maybeWhen(
        addFavVendor: (id) async {
          try {
            emit(const FavState.loading());
            final result = await _addFavVendorUsecase(parm: {
              'id': id,
            });
            result.fold(
              (l) => emit(FavState.failure(l.getMsg)),
              (r) {
                emit(const FavState.successAdded());
                add(const FavEvent.getFavVendors());
              },
            );
          } catch (e) {
            emit(FavState.failure(e.toString()));
          }
        },
        deleteFavVendor: (id) async {
          try {
            emit(const FavState.loading());
            final result = await _deleteFavVendorUsecase(parm: {
              'uuid': id,
            });
            result.fold(
              (l) => emit(FavState.failure(l.getMsg)),
              (r) {
                emit(const FavState.successDeleted());
                add(const FavEvent.getFavVendors());
              },
            );
          } catch (e) {
            emit(FavState.failure(e.toString()));
          }
        },
        getFavVendors: () async {
          try {
            emit(const FavState.loading());
            final result = await _getFavVendorUsecase();
            result.fold(
              (l) => emit(FavState.failure(l.getMsg)),
              (r) {
                favVendors = r;
                emit(const FavState.success());
              },
            );
          } catch (e) {
            emit(FavState.failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
