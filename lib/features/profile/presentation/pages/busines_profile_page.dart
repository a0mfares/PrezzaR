import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/category/presentation/bloc/category_bloc.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/shared/widgets/profile_avater_prezza.dart';

@RoutePage()
class BusinesProfilePage extends StatefulWidget {
  const BusinesProfilePage({super.key});

  @override
  State<BusinesProfilePage> createState() => _BusinesProfilePageState();
}

class _BusinesProfilePageState extends State<BusinesProfilePage> {
  late final ProfileBloc bloc;
  @override
  void initState() {
    bloc = ProfileBloc.get(context);
    bloc.add(const ProfileEvent.initBusiness());
    CategoryBloc.get(context).add(const CategoryEvent.getCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.companyDetails),
      ).prezzaLeading(onTap: () {
        appRoute.navigate(VendorLayoutRoute());
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Form(
            key: bloc.businessForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tr.tellUsAbout),
                vSpace(3),
                Row(
                  children: [
                    BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                        return state.maybeWhen(orElse: () {
                          return ProfileAvater(
                              onTap: () {
                                showPrezzaImagePicker(
                                  context: context,
                                  onPickFromCamera: (camera) {
                                    bloc.add(ProfileEvent.pickIMage(camera));
                                  },
                                  onPickFromGallery: (gallery) {
                                    bloc.add(ProfileEvent.pickIMage(gallery));
                                  },
                                  onPickFromGalleryMulti: (multiGallery) {},
                                );
                              },
                              provider: FileImage(
                                bloc.brandLogo,
                              ),
                              src:
                                  SvgPicture.asset(Assets.assetsImagesProfile));
                        });
                      },
                    ),
                    hSpace(4),
                    Text(
                      tr.urBrandLogo,
                      style: tstyle.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                vSpace(3),
                TextFormField(
                  onChanged: (v) {
                    bloc.businessForm.currentState!.validate();
                  },
                  controller: bloc.brandName,
                  validator: (v) {
                    if (v!.isEmpty) {
                      return tr.brandNamePrompt;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: tr.urKnownName,
                  ),
                ).prezaa(
                  label: tr.brandName,
                ),
                vSpace(2),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: BlocBuilder<ProfileBloc, ProfileState>(
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return TextFormField(
                              onChanged: (v) {
                                bloc.businessForm.currentState!.validate();
                              },
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return tr.businessTypePrompt;
                                }
                                return null;
                              },
                              controller: TextEditingController(
                                  text: bloc.selectedCategory),
                              onTap: () {
                                showPrezzaBottomSheet(
                                  context,
                                  tr.businessType,
                                  categories.map((e) => e.name).toList(),
                                  (v) {
                                    bloc.add(ProfileEvent.selectCategory(v));
                                    bloc.businessForm.currentState!.validate();
                                  },
                                  bloc.selectedCategory,
                                );
                              },
                              readOnly: true,
                              decoration: InputDecoration(
                                hintText: tr.businessDescription,
                                prefixIcon: const Icon(
                                  Icons.arrow_drop_down,
                                ),
                                prefixIconColor: primary,
                              ),
                            ).prezaa(label: tr.businessType);
                          });
                        },
                      ),
                    ),
                    hSpace(4),
                    Expanded(
                      child: TextFormField(
                        onChanged: (v) {
                          bloc.businessForm.currentState!.validate();
                        },
                        validator: (v) {
                          if (v!.isEmpty) {
                            return tr.branchesCountPrompt;
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: bloc.branche,
                        decoration: InputDecoration(
                          hintText: tr.branches,
                        ),
                      ).prezaa(label: tr.branches),
                    )
                  ],
                ).margin(
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                ),
                vSpace(3),
                TextFormField(
                  onChanged: (v) {
                    bloc.businessForm.currentState!.validate();
                  },
                  validator: (v) {
                    if (v!.isEmpty) {
                      return tr.rolePrompt;
                    }
                    return null;
                  },
                  controller: bloc.yourRole,
                  decoration: InputDecoration(
                    hintText: tr.roleInCompany,
                  ),
                ).prezaa(
                  label: tr.role,
                ),
                vSpace(3),
                ListTile(
                  onTap: () {
                    appRoute.navigate(LocationRoute(title: tr.branchLocation));
                  },
                  title: Text(tr.locations),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ).prezza(),
                vSpace(3),
                ListTile(
                  onTap: () {
                    appRoute
                        .navigate(PaymentCardRoute(title: tr.addCreditCard));
                  },
                  title: Text(tr.addCreditCard),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ).prezza(),
                vSpace(3),
                TextFormField(
                  onChanged: (v) {
                    bloc.businessForm.currentState!.validate();
                  },
                  validator: (v) {
                    if (v!.isEmpty) {
                      return tr.descriptionPrompt;
                    }
                    return null;
                  },
                  controller: bloc.descripBrand,
                  decoration: InputDecoration(
                    hintText: tr.writeHere,
                  ),
                ).prezaa(
                  label: tr.describeBrand,
                ),
                vSpace(3),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              validator: (v) {
                                if (v! == '00:00' && !bloc.isOpen24) {
                                  return tr.openHoursPrompt;
                                }
                                return null;
                              },
                              controller: TextEditingController(
                                  text: formatDuration(bloc.openTime)),
                              readOnly: true,
                              onTap: () {
                                showTimePickerPrezza(
                                  context,
                                  bloc.openTime,
                                  (v) {
                                    bloc.add(ProfileEvent.selectTime(true, v));
                                    bloc.businessForm.currentState!.validate();
                                  },
                                );
                              },
                              enabled: !bloc.isOpen24,
                              decoration: InputDecoration(
                                hintText: tr.from,
                              ),
                            ).prezaa(
                              label: tr.operatingHours,
                            ),
                          ),
                          hSpace(4),
                          Expanded(
                            child: TextFormField(
                              validator: (v) {
                                if (v! == '00:00') {
                                  return tr.closeHoursPrompt;
                                }
                                return null;
                              },
                              controller: TextEditingController(
                                  text: formatDuration(bloc.closeTime)),
                              readOnly: true,
                              onTap: () {
                                showTimePickerPrezza(
                                  context,
                                  bloc.closeTime,
                                  (v) {
                                    bloc.add(ProfileEvent.selectTime(false, v));
                                    bloc.businessForm.currentState!.validate();
                                  },
                                );
                              },
                              enabled: !bloc.isOpen24,
                              decoration: InputDecoration(
                                hintText: tr.from,
                              ),
                            ).prezaa(
                              label: '',
                            ),
                          ),
                        ],
                      );
                    });
                  },
                ),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return CheckboxListTile(
                          value: bloc.isOpen24, // Default value
                          onChanged: (bool? v) {
                            // Handle checkbox change
                            if (v != null) {
                              bloc.add(const ProfileEvent.selectOpen24());
                              log(bloc.isOpen24.toString());
                            }
                          },
                          title: Text('24/7', style: redText),
                        ).prezzaCheckBox(
                          side: ListTileControlAffinity.trailing,
                        );
                      },
                    );
                  },
                ),
                vSpace(3),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return SwitchListTile(
                        value: bloc.canBook,
                        inactiveThumbColor: lightCoral,
                        onChanged: (v) {
                          bloc.add(const ProfileEvent.canBook());
                        },
                        activeColor: primary,
                        title: Text(tr.booking),
                        subtitle: Text(tr.clientsCanBook),
                      );
                    });
                  },
                ),
                vSpace(3),
                Text(
                  tr.servicesProvided,
                  style: tstyle.bodyLarge,
                ),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return Column(
                        children: [
                          RadioListTile(
                            value: 'Delivery only',
                            groupValue: bloc.selectedProviding,
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: Text(tr.deliveryOnly),
                            onChanged: (v) {
                              bloc.add(ProfileEvent.selectProviding(v!));
                            },
                          ),
                          RadioListTile(
                            value: 'Pickup only',
                            controlAffinity: ListTileControlAffinity.trailing,
                            groupValue: bloc.selectedProviding,
                            title: Text(tr.pickupOnly),
                            onChanged: (v) {
                              bloc.add(ProfileEvent.selectProviding(v!));
                            },
                          ),
                          RadioListTile(
                            value: 'Delivery & Pickup',
                            controlAffinity: ListTileControlAffinity.trailing,
                            groupValue: bloc.selectedProviding,
                            title: Text(tr.deliveryAndPickup),
                            onChanged: (v) {
                              bloc.add(ProfileEvent.selectProviding(v!));
                            },
                          ),
                        ],
                      );
                    });
                  },
                ),
                vSpace(3),
                BlocConsumer<ProfileBloc, ProfileState>(
                  listener: (context, state) {
                    state.maybeMap(
                        orElse: () {},
                        failure: (er) {
                          BotToast.showText(text: er.err);
                        });
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        bloc.add(const ProfileEvent.addBusinessDetails());
                      },
                      child: state.maybeWhen(
                        loading: () => LoadingAnimationWidget.twistingDots(
                          leftDotColor: lightCoral,
                          rightDotColor: lightCream,
                          size: 20,
                        ),
                        success: () => const Icon(Icons.done),
                        // initial: () => Text(tr.confirm),
                        orElse: () => Text(tr.confirm),
                      ),
                    );
                  },
                ),
                vSpace(3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
