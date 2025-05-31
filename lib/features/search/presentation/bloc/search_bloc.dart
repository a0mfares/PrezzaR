import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/search/data/models/vendorsearch_model.dart';
import 'package:prezza/features/search/domain/entities/vendorsearch_entity.dart';
import 'package:prezza/features/search/domain/usecases/search_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUsingVendorNameUsecase _searchUsingVendorNameUsecase;
  final TextEditingController bussinessName = TextEditingController();
  List<VendorSearchEntity> searchVendorResult = [];

  Map<String, List<VendorSearchEntity>> searchVendorResultRecent =
      (HiveStorage.get(kVendorSearch) as Map?)?.map((key, value) => MapEntry(
              key as String,
              (value as List)
                  .map((e) => VendorSearchEntity.fromModel(
                      VendorSearchModel.fromJson(e)))
                  .toList())) ??
          {};

  bool isRecentSearch(VendorSearchEntity vendor) =>
      searchVendorResultRecent.isEmpty
          ? false
          : searchVendorResultRecent[bussinessName.text]!.contains(vendor);
  static SearchBloc get(context) => BlocProvider.of(context);
  SearchBloc(this._searchUsingVendorNameUsecase) : super(const _Initial()) {
    on<SearchEvent>((event, emit) async {
      await event.maybeWhen(
        deleteRecentSearch: (key) {
          emit(const SearchState.loading());
          for (var item in searchVendorResultRecent.values) {
            item.remove(key);
          }
          HiveStorage.set(kVendorSearch, searchVendorResultRecent);
          emit(const SearchState.success());
        },
        searchUsingBusName: () async {
          emit(const SearchState.loading());
          try {
            if (bussinessName.text.isEmpty) {
              emit(const SearchState.initial());
              return;
            }
            if (searchVendorResultRecent.containsKey(bussinessName.text)) {
              searchVendorResult =
                  searchVendorResultRecent[bussinessName.text]!;
              emit(const SearchState.success());
              return;
            }
            final result = await _searchUsingVendorNameUsecase(parm: {
              'business_name': bussinessName.text,
            });
            result.fold(
              (err) {
                emit(SearchState.failure(err.getMsg));
              },
              (res) {
                if (res.isNotEmpty) {
                  searchVendorResultRecent[bussinessName.text] = res;
                  // HiveStorage.set<Map<String, List<VendorSearchEntity>>>(
                  //     kVendorSearch, searchVendorResultRecent);

                  HiveStorage.set(
                    kVendorSearch,
                    searchVendorResultRecent.map(
                      (key, value) => MapEntry(
                        key,
                        value.map((v) => v.toModel().toJson()).toList(),
                      ),
                    ),
                  );
                }
                searchVendorResult = res;
                emit(const SearchState.success());
              },
            );
          } catch (e) {
            emit(SearchState.failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
