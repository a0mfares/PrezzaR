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

class _LocationPageState extends State<LocationPage> with TickerProviderStateMixin {
  late final LocationBloc bloc;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  
  @override
  void initState() {
    bloc = LocationBloc.get(context);
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    
    if (isCustomer) {
      bloc.add(const LocationEvent.getAddresses());
    } else {
      bloc.add(const LocationEvent.getBranches());
    }
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              if (isCustomer) {
                bloc.add(const LocationEvent.getAddresses());
              } else {
                bloc.add(const LocationEvent.getBranches());
              }
            },
          ),
        ],
      ).prezzaLeading(onTap: () {
        if (!isCustomer) {
          appRoute.back();
          appRoute.removeLast();
        }
      }),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          decoration: BoxDecoration(
            color: lightCoral.withOpacity(0.01),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                    loading: () => Center(
                      child: LoadingAnimationWidget.beat(color: primary, size: 30),
                    ),
                    success: () {
                      if (bloc.branches.isEmpty && !isCustomer ||
                          isCustomer && bloc.addresses.isEmpty) {
                        return _buildEmptyState();
                      }
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: (!isCustomer
                                      ? bloc.branches.length
                                      : bloc.addresses.length) +
                                  1,
                              itemBuilder: (context, index) {
                                if (!isCustomer) {
                                  if (index == bloc.branches.length) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: _buildAddButton(),
                                    );
                                  }
                                } else {
                                  if (index == bloc.addresses.length) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: _buildAddButton(),
                                    );
                                  }
                                }
                                
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: isCustomer
                                      ? _buildAddressCard(index)
                                      : _buildBranchCard(index),
                                );
                              },
                            ),
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
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsImagesEmptyLocation,
            width: 50.w,
          ),
          vSpace(3),
          Text(
            isCustomer ? tr.noDataAvailable : tr.noDataAvailable,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          vSpace(3),
          _buildAddButton(),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
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

  Widget _buildAddressCard(int index) {
  final location = bloc.addresses[index];
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Location icon
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.location_on,
            color: primary,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        // Address details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(height: 6),
              Text(
                location.address,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                  height: 1.4,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        // Action buttons
        Column(
          children: [
            _buildActionButton(
              onTap: () {
                bloc.selectedAdress = location;
                appRoute.navigate(LocationAddRoute(editMod: true));
              },
              icon: Assets.assetsImagesEdit,
              backgroundColor: primary,
            ),
            const SizedBox(height: 8),
            _buildActionButton(
              onTap: () => _showDeleteDialog(
                title: tr.deleteLocation,
                subtitle: tr.areUSureDeleteLocation,
                onDelete: () {
                  if (location.uuid != null) {
                    bloc.add(LocationEvent.deleteAddress(location.uuid!));
                  } else {
                    BotToast.showText(text: "Error: Location ID is null");
                  }
                },
              ),
              icon: Assets.assetsImagesTrashOutlin,
              backgroundColor: lightCream,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildBranchCard(int index) {
  final branches = bloc.branches[index];
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Branch icon
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.store,
            color: primary,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        // Branch details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                branches.branch_address ?? 'No address provided',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  height: 1.4,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        // Action buttons
        BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            state.maybeMap(
              successAuth: (_) {
                if (!mounted) return;
                if (_.isDelete) {
                  _showDeleteDialog(
                    title: tr.deleteBranche,
                    subtitle: tr.areUSureDeleteBranche,
                    onDelete: () {
                      if (branches.id != null) {
                        bloc.add(LocationEvent.deleteBranche(branches.id.toString()));
                      } else {
                        BotToast.showText(text: "Error: Branch id is null");
                      }
                    },
                  );
                } else {
                  bloc.selectedBranche = branches;
                  appRoute.navigate(LocationAddRoute(editMod: true));
                }
              },
              orElse: () {},
            );
          },
          child: Column(
            children: [
              _buildActionButton(
                onTap: () {
                  bloc.add(const LocationEvent.auth(false));
                },
                icon: Assets.assetsImagesEdit,
                backgroundColor: primary,
              ),
              const SizedBox(height: 8),
              _buildActionButton(
                onTap: () {
                  bloc.add(const LocationEvent.auth(true));
                },
                icon: Assets.assetsImagesTrashOutlin,
                backgroundColor: lightCream,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

  Widget _buildActionButton({
    required VoidCallback onTap,
    required String icon,
    required Color backgroundColor,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: SvgPicture.asset(
            icon,
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              backgroundColor == primary ? Colors.white : Colors.black54,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog({
    required String title,
    required String subtitle,
    required VoidCallback onDelete,
  }) {
    showDialogPrezza(
      context: context,
      title: title,
      subTitle: subtitle,
      onTap: () {
        Navigator.of(context).pop();
        onDelete();
      },
    );
  }
}