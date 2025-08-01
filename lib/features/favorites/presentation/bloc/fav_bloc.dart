import 'dart:developer';

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

  // Track loading state for individual vendors
  Set<String> loadingVendors = {};

  // Check if vendor is already in favorites
  bool alreadyInFav(String id) => favVendors.any((e) => e.uuid == id);

  // Check if specific vendor is loading
  bool isVendorLoading(String id) => loadingVendors.contains(id);

  FavBloc(this._addFavVendorUsecase, this._deleteFavVendorUsecase,
      this._getFavVendorUsecase)
      : super(const _Initial()) {
    on<FavEvent>((event, emit) async {
      await event.maybeWhen(
        addFavVendor: (id) async {
          // Check if already in favorites
          if (alreadyInFav(id)) {
            emit(const FavState.failure('Already in favorites'));
            return;
          }

          try {
            // Add to loading set
            loadingVendors.add(id);
            emit(FavState.vendorLoading(id));

            final result = await _addFavVendorUsecase(parm: {
              'id': id,
            });
            result.fold(
              (l) {
                loadingVendors.remove(id);
                emit(FavState.failure(l.getMsg));
              },
              (r) {
                loadingVendors.remove(id);
                emit(FavState.successAdded(id));
                add(const FavEvent.getFavVendors());
              },
            );
          } catch (e) {
            loadingVendors.remove(id);
            emit(FavState.failure(e.toString()));
          }
        },
        deleteFavVendor: (id) async {
          try {
            // Add to loading set
            loadingVendors.add(id);
            emit(FavState.vendorLoading(id));

            final result = await _deleteFavVendorUsecase(parm: {
              'uuid': id,
            });
            result.fold(
              (l) {
                loadingVendors.remove(id);
                emit(FavState.failure(l.getMsg));
              },
              (r) {
                loadingVendors.remove(id);
                emit(FavState.successDeleted(id));
                add(const FavEvent.getFavVendors());
              },
            );
          } catch (e) {
            loadingVendors.remove(id);
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
                log(favVendors[0].toString());
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
