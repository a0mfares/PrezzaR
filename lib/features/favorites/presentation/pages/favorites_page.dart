import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
import 'package:prezza/features/favorites/presentation/widgets/fav_vendor_item.dart';
import '../bloc/fav_bloc.dart';

@RoutePage()
class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late final FavBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = FavBloc.get(context);
    bloc.add(const FavEvent.getFavVendors());
  }

  Widget _buildVendorsList(List<dynamic> vendors) {
    if (vendors.isEmpty) {
      return Center(
        child: EmptyWidget(
          title: tr.noFav,
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        bloc.add(const FavEvent.getFavVendors());
        // Wait for the refresh to complete
        await Future.delayed(const Duration(milliseconds: 500));
      },
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: vendors.length,
        itemBuilder: (context, index) {
          final vendor = vendors[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: FavVendorItemWidget(
              vendor: vendor,
              key: ValueKey(vendor.uuid),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: 10, // Show 10 loading placeholders
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 14,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.favorites),
      ).prezzaLeading(),
      body: Column(
        children: [
          const Divider(),
          // Show favorites count
          BlocBuilder<FavBloc, FavState>(
            builder: (context, state) {
              return state.maybeWhen(
                vendorsLoaded: (vendors) {
                  if (vendors.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            tr.vendorsInFavorites(vendors.length),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey.shade600,
                                ),
                          ),
                        ],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          Expanded(
            child: BlocConsumer<FavBloc, FavState>(
              listener: (context, state) {
                state.maybeWhen(
                  failure: (error) {
                    BotToast.showWidget(toastBuilder: (context) {
                      return SnackBarAction(
                        label: tr.retry,
                        textColor: Colors.white,
                        onPressed: () {
                          bloc.add(const FavEvent.getFavVendors());
                        },
                      );
                    });
                  },
                  successDeleted: (vendorId) {
                    BotToast.showText(text: tr.removedFromFavorites);
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.when(
                  initial: () => _buildLoadingState(),
                  loading: () => _buildLoadingState(),
                  vendorsLoaded: (vendors) => _buildVendorsList(vendors),
                  failure: (error) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Colors.red.shade400,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            tr.failedToLoadFavorites,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.red.shade600,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Text(
                              error,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.grey.shade600,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton.icon(
                            onPressed: () {
                              bloc.add(const FavEvent.getFavVendors());
                            },
                            icon: const Icon(Icons.refresh),
                            label:  Text(tr.retry),
                          ),
                        ],
                      ),
                    );
                  },
                  success: () {
                    // Handle legacy success state
                    return _buildVendorsList(bloc.favVendors);
                  },
                  vendorLoading: (vendorId) {
                    // Show current list, individual loading handled in items
                    return _buildVendorsList(bloc.favVendors);
                  },
                  successAdded: (vendorId) {
                    // Show updated list
                    return _buildVendorsList(bloc.favVendors);
                  },
                  successDeleted: (vendorId) {
                    // Show updated list
                    return _buildVendorsList(bloc.favVendors);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
