import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/shared/widgets/empty_widget.dart';
import '../widgets/shimmer_card_loading.dart';
import '../widgets/vendor_sqaur_item.dart';

class NearbyPlacesPage extends StatefulWidget {
  const NearbyPlacesPage({super.key, required this.type});
  final String type;
  @override
  State<NearbyPlacesPage> createState() => _NearbyPlacesPageState();
}

class _NearbyPlacesPageState extends State<NearbyPlacesPage> {
  late final VendorBloc bloc;

  @override
  void initState() {
    bloc = VendorBloc.get(context);
    if (isLocationSelected) {
      bloc.add(VendorEvent.getNearbyPlaces(widget.type));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      width: 100.w,
      child: BlocBuilder<VendorBloc, VendorState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerLoadingList(),
            orElse: () {
              if (bloc.vendorItem.isEmpty) {
                return EmptyWidget(
                  title:
                      isLocationSelected ? tr.selectLocationNear : tr.noPlaces,
                );
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bloc.vendorItem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final vendor = bloc.vendorItem[index];
                  return VendorSqaurItem(vendor: vendor);
                },
              );
            },
          );
        },
      ),
    );
  }
}
