import 'package:prezza/core/helper/tools.dart';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:place_picker_google/place_picker_google.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/location/domain/entities/current_location_entity.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/keys.dart';
import '../../../../core/helper/widgets.dart';
import '../../../vendor/presentation/bloc/vendor_bloc.dart';
import '../bloc/location_bloc.dart';

class CurrentLocationPage extends StatefulWidget {
  const CurrentLocationPage({super.key, this.type = 'normal'});
  final String type;
  @override
  State<CurrentLocationPage> createState() => _CurrentLocationPageState();
}

class _CurrentLocationPageState extends State<CurrentLocationPage> {
  late final LocationBloc bloc;
  final GlobalKey _btn = GlobalKey();
  late TutorialCoachMark tutorialCoachMark;
  @override
  void initState() {
    bloc = LocationBloc.get(context);
    if (!isLocationSelected) {
      showTutorial();
    }
    super.initState();
  }

  void showTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      colorShadow: lightCream,
      textSkip: tr.skip,
      paddingFocus: 10,
      opacityShadow: 0.8,
      targets: [
        TargetFocus(
          identify: "btn location", // Unique ID for tracking
          keyTarget: _btn,
          alignSkip: Alignment.bottomRight,
          contents: [
            TargetContent(
              align: ContentAlign.top,
              child: Text(
                tr.tabHereToChangeLocation,
                style: TextStyle(color: primary, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ],
          shape: ShapeLightFocus.RRect, // Rounded highlight
        ),
      ],
      onFinish: () {
        bloc.add(const LocationEvent.getInitialLocation());
      },
    )..show(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationBloc, LocationState>(
      listener: (context, state) {
        state.maybeMap(
          success: (v) {
            if (HiveStorage.get(kCurLocation) == null) {
              showPrezzaBtm(
                context,
                PlacePicker(
                  apiKey: Platform.isAndroid ? mapApiKeyAndroid : mapApiKeyIos,
                  onPlacePicked: (LocationResult result) {
                    HiveStorage.set(kCurLocation,
                        CurrentLocationEntity.fromLocationResult(result));
                    VendorBloc.get(context)
                        .add(VendorEvent.getNearbyPlaces(widget.type));
                    setState(() {});
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
                      const SearchInputDecorationConfig(
                    hintText: "Search for a building, street or ...",
                  ),
                ),
              );
            }
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return InkWell(
              key: _btn,
              onTap: () {
                showPrezzaBtm(
                  context,
                  PlacePicker(
                    apiKey:
                        Platform.isAndroid ? mapApiKeyAndroid : mapApiKeyIos,
                    onPlacePicked: (LocationResult result) {
                      HiveStorage.set(kCurLocation,
                          CurrentLocationEntity.fromLocationResult(result));
                      VendorBloc.get(context)
                          .add(VendorEvent.getNearbyPlaces(widget.type));
                      setState(() {});
                      context.maybePop();
                    },
                    // localizationConfig: LocalizationConfig(
                    //     languageCode: 'ar',
                    //     findingPlace: 'findingPlace',
                    //     noResultsFound: 'noResultsFound',
                    //     unnamedLocation: 'unnamedLocation'),
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
                        const SearchInputDecorationConfig(
                      hintText: "Search for a building, street or ...",
                    ),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    HiveStorage.get(kCurLocation) == null
                        ? tr.currentLocation
                        : HiveStorage.get<CurrentLocationEntity>(kCurLocation)
                            .locationName,
                    style: tstyle.bodyLarge,
                  ),
                ),
              ),
            );
          },
          success: () {
            return InkWell(
              key: _btn,
              onTap: () {
                showPrezzaBtm(
                  context,
                  PlacePicker(
                    apiKey:
                        Platform.isAndroid ? mapApiKeyAndroid : mapApiKeyIos,
                    onPlacePicked: (LocationResult result) {
                      HiveStorage.set(kCurLocation,
                          CurrentLocationEntity.fromLocationResult(result));
                      VendorBloc.get(context)
                          .add(VendorEvent.getNearbyPlaces(widget.type));
                      setState(() {});
                      context.maybePop();
                    },
                    // localizationConfig: LocalizationConfig(
                    //     languageCode: 'ar',
                    //     findingPlace: 'findingPlace',
                    //     noResultsFound: 'noResultsFound',
                    //     unnamedLocation: 'unnamedLocation'),
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
                        const SearchInputDecorationConfig(
                      hintText: "Search for a building, street or ...",
                    ),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    HiveStorage.get(kCurLocation) == null
                        ? tr.currentLocation
                        : HiveStorage.get<CurrentLocationEntity>(kCurLocation)
                            .locationName,
                    style: tstyle.bodyLarge,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
