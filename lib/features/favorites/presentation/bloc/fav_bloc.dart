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
  Set<String> loadingVendors = {}; // Track vendor loading states

  bool alreadyInFav(String id) => favVendors.any((e) => e.uuid == id);
  bool isVendorLoading(String id) => loadingVendors.contains(id);

  FavBloc(
    this._addFavVendorUsecase,
    this._deleteFavVendorUsecase,
    this._getFavVendorUsecase,
  ) : super(const FavState.initial()) {
    on<FavEvent>((event, emit) async {
      await event.maybeWhen(
        addFavVendor: (id) async {
          if (alreadyInFav(id)) {
            emit(const FavState.failure('Already in favorites'));
            return;
          }

          try {
            loadingVendors.add(id);
            emit(FavState.vendorLoading(id));

            final result = await _addFavVendorUsecase(parm: {'id': id});
            result.fold(
              (l) {
                loadingVendors.remove(id);
                emit(FavState.failure(l.getMsg));
              },
              (r) {
                loadingVendors.remove(id);
                emit(FavState.successAdded(id));
                emit(const FavState.success());
              },
            );
          } catch (e) {
            loadingVendors.remove(id);
            emit(FavState.failure(e.toString()));
          }
        },
        deleteFavVendor: (id) async {
          try {
            loadingVendors.add(id);
            emit(FavState.vendorLoading(id));

            final result = await _deleteFavVendorUsecase(parm: {'uuid': id});
            result.fold(
              (l) {
                loadingVendors.remove(id);
                emit(FavState.failure(l.getMsg));
              },
              (r) {
                loadingVendors.remove(id);
                favVendors.removeWhere((e) => e.uuid == id);
                emit(FavState.successDeleted(id));
                emit(const FavState.success());
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
                if (favVendors.isNotEmpty) {
                  log("First vendor: ${favVendors.first}");
                }
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
