import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/empty_widget.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
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
  initState() {
    bloc = FavBloc.get(context);
    bloc.add(const FavEvent.getFavVendors());
    super.initState();
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
          Expanded(
            child: BlocBuilder<FavBloc, FavState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => defLoadingCenter,
                  failure: (err) => EmptyWidget(title: err),
                  success: () {
                    return ListView.builder(
                      itemCount: bloc.favVendors.length,
                      itemBuilder: (context, index) {
                        final vendor = bloc.favVendors[index];
                        return FavVendorItemWidget(
                          vendor: vendor,
                        );
                      },
                    );
                  },
                  orElse: () {
                    return const UnderMontains();
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
