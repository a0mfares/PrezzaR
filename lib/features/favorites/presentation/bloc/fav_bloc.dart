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
    // Register event handlers
    on<_AddFavVendor>(_onAddFavVendor);
    on<_DeleteFavVendor>(_onDeleteFavVendor);
    on<_GetFavVendors>(_onGetFavVendors);
  }

  Future<void> _onAddFavVendor(
    _AddFavVendor event,
    Emitter<FavState> emit,
  ) async {
    if (alreadyInFav(event.id)) {
      emit(const FavState.failure('Already in favorites'));
      return;
    }

    try {
      loadingVendors.add(event.id);
      emit(FavState.vendorLoading(event.id));

      final result = await _addFavVendorUsecase(parm: {'id': event.id});

      result.fold(
        (error) {
          loadingVendors.remove(event.id);
          emit(FavState.failure(error.getMsg));
        },
        (vendor) {
          loadingVendors.remove(event.id);

          emit(FavState.successAdded(event.id));
          log('Added vendor ${event.id} to favorites');
        },
      );
    } catch (e) {
      loadingVendors.remove(event.id);
      emit(FavState.failure(e.toString()));
    }
  }

  Future<void> _onDeleteFavVendor(
    _DeleteFavVendor event,
    Emitter<FavState> emit,
  ) async {
    if (!alreadyInFav(event.id)) {
      emit(const FavState.failure('Vendor not in favorites'));
      return;
    }

    try {
      loadingVendors.add(event.id);
      emit(FavState.vendorLoading(event.id));

      final result = await _deleteFavVendorUsecase(parm: {'uuid': event.id});

      result.fold(
        (error) {
          loadingVendors.remove(event.id);
          emit(FavState.failure(error.getMsg));
        },
        (success) {
          loadingVendors.remove(event.id);
          favVendors.removeWhere((vendor) => vendor.uuid == event.id);
          emit(FavState.successDeleted(event.id));
          log('Removed vendor ${event.id} from favorites');
        },
      );
    } catch (e) {
      loadingVendors.remove(event.id);
      emit(FavState.failure(e.toString()));
    }
  }

  Future<void> _onGetFavVendors(
    _GetFavVendors event,
    Emitter<FavState> emit,
  ) async {
    try {
      emit(const FavState.loading());

      final result = await _getFavVendorUsecase();

      result.fold(
        (error) {
          log('Error loading favorite vendors: ${error.getMsg}');
          emit(FavState.failure(error.getMsg));
        },
        (vendors) {
          favVendors = vendors;
          log('Loaded ${favVendors.length} favorite vendors');

          if (favVendors.isNotEmpty) {
            log("First vendor: ${favVendors.first}");
          }

          emit(FavState.vendorsLoaded(favVendors));
        },
      );
    } catch (e) {
      log('Exception loading favorite vendors: $e');
      emit(FavState.failure(e.toString()));
    }
  }

  // Helper method to get vendor by ID
  FavVendorEntity? getVendorById(String id) {
    try {
      return favVendors.firstWhere((vendor) => vendor.uuid == id);
    } catch (e) {
      return null;
    }
  }

  // Helper method to toggle favorite status
  void toggleFavorite(String vendorId) {
    if (alreadyInFav(vendorId)) {
      add(FavEvent.deleteFavVendor(vendorId));
    } else {
      add(FavEvent.addFavVendor(vendorId));
    }
  }
}
