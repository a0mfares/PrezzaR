import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/prezza_btn.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:prezza/features/location/presentation/bloc/location_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class LocationPage extends StatefulWidget {
  const LocationPage({super.key, required this.title});
  final String title;
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  late final LocationBloc bloc;
  @override
  void initState() {
    bloc = LocationBloc.get(context);
    if (isCustomer) {
      bloc.add(const LocationEvent.getAddresses());
    } else {
      bloc.add(const LocationEvent.getBranches());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ).prezzaLeading(onTap: () {
        if (!isCustomer) {
          appRoute.back();
          appRoute.removeLast();
        }
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            state.maybeMap(
              successDelete: (v) {
                BotToast.showText(text: tr.successDeleted);
              },
              failure: (v) {
                BotToast.showText(text: v.err);
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () =>
                    LoadingAnimationWidget.beat(color: primary, size: 30),
                success: () {
                  if (bloc.branches.isEmpty && !isCustomer ||
                      isCustomer && bloc.addresses.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.assetsImagesEmptyLocation,
                              width: 50.w),
                          vSpace(3),
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
                  return ListView.builder(
                    itemCount: (!isCustomer
                            ? bloc.branches.length
                            : bloc.addresses.length) +
                        1,
                    itemBuilder: (context, index) {
                      if (!isCustomer) {
                        if (index == bloc.branches.length) {
                          return PrezzaBtn(
                            onTap: () {
                              appRoute.navigate(LocationAddRoute());
                            },
                            icon: Icon(
                              Icons.add,
                              color: primary,
                            ),
                            title: tr.addNewAddress,
                          );
                        }
                      } else {
                        if (index == bloc.addresses.length) {
                          return PrezzaBtn(
                            onTap: () {
                              appRoute.navigate(LocationAddRoute());
                            },
                            icon: Icon(
                              Icons.add,
                              color: primary,
                            ),
                            title: tr.addNewAddress,
                          );
                        }
                      }
                      if (isCustomer) {
                        final location = bloc.addresses[index];
                        return SizedBox(
                          width: 100.w,
                          height: 20.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      location.title,
                                      style: tstyle.headlineSmall,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      location.address,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(3),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      bloc.selectedAdress = location;
                                      appRoute.navigate(
                                          LocationAddRoute(editMod: true));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: primary,
                                      child: SvgPicture.asset(
                                          Assets.assetsImagesEdit),
                                    ),
                                  ),
                                  hSpace(3),
                                  InkWell(
                                    onTap: () {
                                      showDialogPrezza(
                                        context: context,
                                        title: tr.deleteLocation,
                                        subTitle: tr.areUSureDeleteLocation,
                                        onTap: () {
                                          bloc.add(LocationEvent.deleteAddress(
                                              location.uuid));
                                          context.maybePop();
                                        },
                                      );
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: lightCream,
                                      child: SvgPicture.asset(
                                          Assets.assetsImagesTrash),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }
                      final branches = bloc.branches[index];
                      return SizedBox(
                        width: 100.w,
                        height: 20.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                branches.branch_address,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            hSpace(3),
                            BlocListener<LocationBloc, LocationState>(
                              listener: (context, state) {
                                state.maybeMap(
                                  successAuth: (_) {
                                    if (!mounted) return;
                                    if (_.isDelete) {
                                      showDialogPrezza(
                                        context: context,
                                        title: tr.deleteBranche,
                                        subTitle: tr.areUSureDeleteBranche,
                                        onTap: () {
                                          bloc.add(LocationEvent.deleteBranche(
                                              branches.branch_uuid.toString()));
                                          context.maybePop();
                                        },
                                      );
                                    } else {
                                      bloc.selectedBranche = branches;
                                      appRoute.navigate(
                                          LocationAddRoute(editMod: true));
                                    }
                                  },
                                  orElse: () {},
                                );
                              },
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      bloc.add(const LocationEvent.auth(false));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: primary,
                                      child: SvgPicture.asset(
                                          Assets.assetsImagesEdit),
                                    ),
                                  ),
                                  hSpace(3),
                                  InkWell(
                                    onTap: () {
                                      bloc.add(const LocationEvent.auth(true));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: lightCream,
                                      child: SvgPicture.asset(
                                          Assets.assetsImagesTrash),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
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
      ),
    );
  }
}
