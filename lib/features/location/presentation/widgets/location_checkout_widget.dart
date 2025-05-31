import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/features/location/domain/entities/address_entity.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../core/shared/widgets/prezza_btn.dart';
import '../../../../core/shared/widgets/under_montains.dart';
import '../../../../prezza_page.dart';
import '../bloc/location_bloc.dart';

class LocationCheckoutWidget extends StatefulWidget {
  const LocationCheckoutWidget(
      {super.key,
      required this.selectedLocation,
      required this.onSelectedLocation});
  final AddressEntity selectedLocation;
  final Function(AddressEntity?) onSelectedLocation;
  @override
  State<LocationCheckoutWidget> createState() => _LocationCheckoutWidgetState();
}

class _LocationCheckoutWidgetState extends State<LocationCheckoutWidget> {
  late final LocationBloc bloc;

  @override
  void initState() {
    bloc = LocationBloc.get(context);
    bloc.add(const LocationEvent.getAddresses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => defLoadingCenter,
            success: () {
              if (bloc.addresses.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrezzaBtn(
                        onTap: () {
                          appRoute.navigate(LocationAddRoute());
                        },
                        icon: Icon(
                          Icons.add,
                          color: primary,
                        ),
                        title: tr.addNewAddress,
                      ),
                    ],
                  ),
                );
              }
              return Column(
                children: [
                  Column(
                    children: bloc.addresses
                        .map((e) => RadioListTile(
                              value: e,
                              groupValue: widget.selectedLocation,
                              onChanged: widget.onSelectedLocation,
                              title: Text(e.address),
                              subtitle: Text(e.landmark),
                            ))
                        .toList(),
                  ),
                  PrezzaBtn(
                    onTap: () {
                      appRoute.navigate(LocationAddRoute());
                    },
                    icon: Icon(
                      Icons.add,
                      color: primary,
                    ),
                    title: tr.addNewAddress,
                  )
                ],
              );
            },
            orElse: () {
              return const UnderMontains();
            },
          );
        },
      ),
    );
  }
}
