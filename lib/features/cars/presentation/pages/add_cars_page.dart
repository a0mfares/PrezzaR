import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/constants/urls.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/features/cars/presentation/bloc/car_bloc.dart';
import 'package:search_choices/search_choices.dart';

import '../../../../config/txt_themes.dart';
import '../../../../core/shared/widgets/profile_avater_prezza.dart';

@RoutePage()
class AddCarsPage extends StatefulWidget {
  const AddCarsPage({super.key, this.editMode = false});
  final bool editMode;
  @override
  State<AddCarsPage> createState() => _AddCarsPageState();
}

class _AddCarsPageState extends State<AddCarsPage> {
  late final CarBloc bloc;

  @override
  void initState() {
    bloc = CarBloc.get(context);

    if (widget.editMode) {
      bloc.add(const CarEvent.intializeEditMode());
    } else {
      bloc.add(const CarEvent.searshMakes());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.addNewCar),
      ).prezzaLeading(),
      body: BlocListener<CarBloc, CarState>(
        listener: (context, state) {
          state.maybeMap(
            successAdded: (v) {
              BotToast.showText(text: tr.carAddedSuccess);
              context.maybePop();
            },
            successUpdated: (v) {
              BotToast.showText(text: tr.carUpdatedSuccess);
              context.maybePop();
            },
            failure: (v) {
              BotToast.showText(text: v.error);
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    return ProfileAvater(
                      onTap: () {
                        showPrezzaImagePicker(
                          context: context,
                          onPickFromCamera: (camera) {
                            bloc.add(CarEvent.pickImage(camera));
                          },
                          onPickFromGallery: (gallery) {
                            bloc.add(CarEvent.pickImage(gallery));
                          },
                          onPickFromGalleryMulti: (multiGallery) {},
                        );
                      },
                      provider: (widget.editMode && bloc.carImg == null)
                          ? NetworkImage(
                              '${Urls.baseUrl.replaceAll('api', '')}${bloc.selectedCar.car_image}')
                          : (bloc.carImg != null)
                              ? FileImage(bloc.carImg!)
                              : null,
                      src: SvgPicture.asset(Assets.assetsImagesCar),
                    );
                  },
                ),
                vSpace(3),
                BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    return SearchChoices.single(
                      hint: Text(bloc.selectedMake.isEmpty
                          ? tr.selectMake
                          : bloc.selectedMake),
                      underline: const SizedBox(),
                      padding: EdgeInsets.zero,
                      isExpanded: true,
                      items: bloc.makes
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (v) {
                        if (v != null) {
                          bloc.add(CarEvent.selectMake(v));
                        }
                      },
                    ).prezza();
                  },
                ),
                vSpace(3),
                BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      modelsLoaded: () {
                        return SearchChoices.single(
                          padding: EdgeInsets.zero,
                          isExpanded: true,
                          underline: const SizedBox(),
                          hint: Text(
                            bloc.selectedModel.isEmpty
                                ? tr.selectModel
                                : bloc.selectedModel,
                          ),
                          items: bloc.models
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                          onChanged: (v) {
                            if (v != null) {
                              bloc.add(CarEvent.selectModel(v));
                            }
                          },
                        ).prezza();
                      },
                      loading: () => SearchChoices.single(
                        padding: EdgeInsets.zero,
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: Text(
                          bloc.selectedModel.isEmpty
                              ? tr.selectModel
                              : bloc.selectedModel,
                        ),
                        items: const [],
                        onChanged: null,
                      ).prezza(),
                      orElse: () => SearchChoices.single(
                        padding: EdgeInsets.zero,
                        isExpanded: true,
                        underline: const SizedBox(),
                        hint: Text(
                          bloc.selectedModel.isEmpty
                              ? tr.selectModel
                              : bloc.selectedModel,
                        ),
                        items: bloc.models
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (v) {
                          if (v != null) {
                            bloc.add(CarEvent.selectModel(v));
                          }
                        },
                      ).prezza(),
                    );
                  },
                ),
                vSpace(3),
                BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    return TextFormField(
                      controller: bloc.vehicleColorController,
                      decoration: InputDecoration(
                        hintText: tr.vehicleColor,
                      ),
                    ).prezaa();
                  },
                ),
                vSpace(3),
                BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    return ListTile(
                      leading: bloc.selectedType.isEmpty
                          ? const SizedBox()
                          : null,
                      title: Text(
                          bloc.selectedType.isEmpty
                              ? tr.vehicleType
                              : bloc.selectedType,
                          style: redText),
                      horizontalTitleGap: 55,
                      onTap: () {
                        showPrezzaBottomSheet(
                          context,
                          tr.vehicleType,
                          bloc.types,
                          (v) {
                            bloc.add(CarEvent.selectType(v));
                          },
                          bloc.selectedType,
                        );
                      },
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    ).prezza();
                  },
                ),
                vSpace(3),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(Assets.assetsImagesPlateNumber,
                        fit: BoxFit.cover),
                    Positioned(
                      bottom: 10,
                      right: 13,
                      width: 210,
                      child: BlocBuilder<CarBloc, CarState>(
                        builder: (context, state) {
                          return TextFormField(
                            controller: bloc.platNumberController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 25,
                                horizontal: 15,
                              ),
                              hintText: tr.licensePlate,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                vSpace(3),
                BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: state.maybeWhen(
                        loading: () => null,
                        orElse: () => () {
                          log(bloc.selectedMake);
                          log(bloc.selectedModel);
                          log(bloc.selectedType);
                          log(bloc.vehicleColorController.text);
                          log(bloc.platNumberController.text);
                          if (widget.editMode) {
                            bloc.add(const CarEvent.updateCar());
                          } else {
                            bloc.add(const CarEvent.addCar());
                          }
                        },
                      ),
                      child: state.maybeWhen(
                        loading: () => defLoadingCenter,
                        orElse: () => Text(tr.add),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}