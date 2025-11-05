import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:place_picker_google/place_picker_google.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/constants/keys.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../config/custom_colors.dart';
import '../bloc/location_bloc.dart';

@RoutePage()
class LocationAddPage extends StatefulWidget {
  const LocationAddPage({super.key, this.editMod = false});
  final bool editMod;

  @override
  State<LocationAddPage> createState() => _LocationAddPageState();
}

class _LocationAddPageState extends State<LocationAddPage> {
  late final LocationBloc bloc;
  @override
  void initState() {
    bloc = LocationBloc.get(context);
    if (widget.editMod) {
      bloc.add(const LocationEvent.initializeEditMode());
    } else {
      bloc.add(const LocationEvent.getInitialLocation());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.addNewAddress),
      ).prezzaLeading(),
      body: BlocListener<LocationBloc, LocationState>(
        listener: (context, state) {
          state.maybeMap(
            successAdded: (v) {
              BotToast.showText(text: tr.successAdded);
              bloc.add(const LocationEvent.getAddresses());
            },
            successUpdated: (v) {
              BotToast.showText(text: tr.successUpdated);
            },
            failure: (v) {
              BotToast.showText(text: v.err);
            },
            orElse: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: BlocConsumer<LocationBloc, LocationState>(
            listener: (context, state) {
              state.maybeMap(
                successPicked: (s) {
                  bloc.add(const LocationEvent.getBranches());
                  appRoute.back();
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => defLoadingCenter,
                success: () {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: bloc.brancheAddress,
                        decoration:  InputDecoration(
                          hintText: tr.houseNumberHint,
                        ),
                      ).prezaa(
                        label: tr.address,
                      ),
                      vSpace(3),
                      TextFormField(
                        controller: bloc.brancheLandMark,
                        decoration:  InputDecoration(
                          hintText: tr.landmarkHint,
                        ),
                      ).prezaa(
                        label: tr.landmark,
                      ),
                      vSpace(3),
                      Visibility(
                        visible: isCustomer,
                        child: TextFormField(
                          controller: bloc.addressTitle,
                          decoration: InputDecoration(
                            hintText: tr.addressTitle,
                          ),
                        ).prezaa(
                          label: tr.addressTitle,
                        ),
                      ),
                      vSpace(3),
                      ListTile(
                        onTap: () {
                          showPrezzaBtm(
                            context,
                            SizedBox(
                              height: h * 0.55,
                              child: PlacePicker(
                                apiKey: Platform.isAndroid
                                    ? mapApiKeyAndroid
                                    : mapApiKeyIos,
                                onPlacePicked: (LocationResult result) {
                                  bloc.add(LocationEvent.onPickPlace(result));
                                  context.maybePop();
                                },
                                enableNearbyPlaces: false,
                                myLocationButtonEnabled: true,
                                initialLocation: bloc.initialLocation,
                                searchInputConfig: const SearchInputConfig(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  autofocus: false,
                                  textDirection: TextDirection.ltr,
                                ),
                                searchInputDecorationConfig:
                                     SearchInputDecorationConfig(
                                  hintText:
                                      tr.searchForLocation,
                                ),
                              ),
                            ),
                            true,
                          );
                        },
                        leading: CircleAvatar(
                          backgroundColor: lightCream,
                          child:
                              SvgPicture.asset(Assets.assetsImagesPinLocation),
                        ),
                        title: Text(tr.currentLocation),
                      ),
                      vSpace(3),
                      ElevatedButton(
                        onPressed: () {
                          if (isCustomer) {
                            if (widget.editMod) {
                              bloc.add(const LocationEvent.updateAddress());
                            } else {
                              bloc.add(const LocationEvent.addAddress());
                            }
                          } else {
                            if (widget.editMod) {
                              bloc.add(const LocationEvent.updateBranche());
                            } else {
                              bloc.add(const LocationEvent.addBranche());
                            }
                          }
                        },
                        child: Text(tr.confirm),
                      ),
                    ],
                  );
                },
                orElse: () {
                  return const UnderMontains();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
