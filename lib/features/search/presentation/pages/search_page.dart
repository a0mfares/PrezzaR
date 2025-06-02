import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/features/search/presentation/bloc/search_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final SearchBloc bloc;
  @override
  void initState() {
    bloc = SearchBloc.get(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar().prezzaLeading(),
      body: Column(
        children: [
          SearchBar(
            controller: bloc.bussinessName,
            leading: Icon(Icons.search, color: primary, size: 30),
            trailing: [
              InkWell(
                onTap: () {
                  if (bloc.bussinessName.text.isEmpty) {
                    appRoute.back();
                  } else {
                    bloc.bussinessName.clear();
                    setState(() {});
                  }
                },
                child: Icon(Icons.close, color: primary, size: 30),
              )
            ],
            onChanged: (v) {
              bloc.add(const SearchEvent.searchUsingBusName());
            },
            hintText: tr.searchCoffe,
          ),
          vSpace(3),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => defLoadingCenter,
                success: () {
                  if (bloc.searchVendorResult.isEmpty) {
                    return Center(
                      heightFactor: 2,
                      child: SvgPicture.asset(Assets.assetsImagesNotfound,
                          width: 50.w),
                    );
                  }
                  return Expanded(
                    child: ListView.builder(
                      itemCount: bloc.searchVendorResult.length,
                      itemBuilder: (context, index) {
                        final vendor = bloc.searchVendorResult[index];
                        return ListTile(
                          leading: bloc.isRecentSearch(vendor)
                              ? const Icon(Icons.alarm_rounded)
                              : const Icon(Icons.search),
                          title: Text(vendor.business_name),
                          onTap: () {
                            // context.router.push(NearbyPlacesPageRoute(
                            //   vendor: recentSearch,
                            // ));
                          },
                          trailing: bloc.isRecentSearch(vendor)
                              ? InkWell(
                                  onTap: () {
                                    bloc.add(
                                        SearchEvent.deleteRecentSearch(vendor));
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: primary,
                                  ),
                                )
                              : null,
                        );
                      },
                    ),
                  );
                },
                orElse: () {
                  if (bloc.searchVendorResultRecent.isEmpty) {
                    return Center(
                      heightFactor: 2,
                      child: SvgPicture.asset(Assets.assetsImagesEmptyLocation,
                          width: 50.w),
                    );
                  }
                  return Expanded(
                    child: ListView.builder(
                      itemCount: bloc.searchVendorResultRecent.values
                          .toList()
                          .first
                          .length,
                      itemBuilder: (context, index) {
                        final recentSearch = bloc
                            .searchVendorResultRecent.values
                            .toList()
                            .first[index];
                        return ListTile(
                          leading: const Icon(Icons.alarm_rounded),
                          title: Text(recentSearch.business_name),
                          onTap: () {
                            // context.router.push(NearbyPlacesPageRoute(
                            //   vendor: recentSearch,
                            // ));
                          },
                          trailing: InkWell(
                            onTap: () {
                              bloc.add(
                                  SearchEvent.deleteRecentSearch(recentSearch));
                            },
                            child: Icon(
                              Icons.close,
                              color: primary,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          )
        ],
      ).margin(
        margin: const EdgeInsets.symmetric(horizontal: 17),
      ),
    );
  }
}
