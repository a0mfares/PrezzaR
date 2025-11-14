// ignore_for_file: no_wildcard_variable_uses

import 'dart:math';

import 'dart:developer';
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
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/service/routes.gr.dart';
import '../../../../core/shared/widgets/prezza_btn.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class PaymentCardPage extends StatefulWidget {
  const PaymentCardPage({super.key, required this.title});
  final String title;
  @override
  State<PaymentCardPage> createState() => _PaymentCardPageState();
}

class _PaymentCardPageState extends State<PaymentCardPage> with TickerProviderStateMixin {
  late final PaymentBloc bloc;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late AnimationController _cardAnimationController;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<int> _cardItems = [];

  @override
  void initState() {
    bloc = PaymentBloc.get(context);
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _cardAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    
    // Initialize card items
    if (isCustomer && bloc.customerCard.isNotEmpty) {
      _cardItems.addAll(List.generate(bloc.customerCard.length, (index) => index));
    }
    
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _cardAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ).prezzaLeading(),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocConsumer<PaymentBloc, PaymentState>(
            listener: (context, state) {
              state.maybeWhen(
                failure: (err) {
                  logWithColor(err, color: "red");
                  if (err.toString().contains("Card not found")) {
                    BotToast.showText(text: tr.noCreditCards);
                  } else {
                    BotToast.showText(text: err);
                  }
                },
                successDeleted: () {
                  BotToast.showText(text: tr.successDeleted);
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Center(
                      child: LoadingAnimationWidget.beat(color: primary, size: 30),
                    ),
                success: () {
                  if (isCustomer) {
                    return Column(
                      children: [
                        SizedBox(height: 2.h),
                        // Cards section
                        Expanded(
                          child: AnimatedList(
                            key: _listKey,
                            initialItemCount: bloc.customerCard.length + 1,
                            padding: EdgeInsets.only(bottom: 10.h),
                            itemBuilder: (context, index, animation) {
                              if (bloc.customerCard.length == index) {
                                // Add new card button
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(0, 0.3),
                                    end: Offset.zero,
                                  ).animate(CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.easeOut,
                                  )),
                                  child: FadeTransition(
                                    opacity: animation,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 1.h),
                                      child: _buildAddCardButton(),
                                    ),
                                  ),
                                );
                              }
                              
                              final card = bloc.customerCard[index];
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0.3, 0),
                                  end: Offset.zero,
                                ).animate(CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeOut,
                                )),
                                child: FadeTransition(
                                  opacity: animation,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: _buildCustomerCard(card, index),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  }
                  
                  // Vendor card
                  return Column(
                    children: [
                      SizedBox(height: 5.h),
                      _buildVendorCard(),
                    ],
                  );
                },
                orElse: () {
                  if (isCustomer) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.assetsImagesEmptyLocation,
                            width: 40.w,
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            tr.noCreditCards,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 4.h),
                          _buildAddCardButton(),
                        ],
                      ),
                    );
                  }

                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            if (HiveStorage.get(kPass, defaultValue: '').toString() == "") {
                              showPrezzaBtm(
                                context,
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 3.h),
                                    Text(
                                      tr.plsAuth,
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                    SizedBox(height: 3.h),
                                    TextFormField(
                                      controller: bloc.password,
                                      decoration: InputDecoration(
                                        hintText: tr.password,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 15,
                                        ),
                                      ),
                                    ).prezaa(),
                                    SizedBox(height: 3.h),
                                    BlocConsumer<PaymentBloc, PaymentState>(
                                      listener: (context, state) {
                                        if (bloc.isAuthenticated) {
                                          context.maybePop();
                                        }
                                        state.maybeMap(
                                          success: (v) {
                                            context.maybePop();
                                            context.maybePop();
                                            showPrezzaBtm(
                                              context,
                                              Center(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      tr.useBiometrics,
                                                      style: TextStyle(fontSize: 16.sp),
                                                    ),
                                                    SizedBox(height: 3.h),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        bloc.add(const PaymentEvent.auth());
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: primary,
                                                        padding: EdgeInsets.symmetric(
                                                          horizontal: 5.w,
                                                          vertical: 1.5.h,
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        tr.ok,
                                                        style: const TextStyle(color: Colors.white),
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.h),
                                                    TextButton(
                                                      onPressed: () {
                                                        context.maybePop();
                                                      },
                                                      child: Text(
                                                        tr.cancel,
                                                        style: TextStyle(color: primary),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                          orElse: () {},
                                        );
                                      },
                                      builder: (context, state) {
                                        return Padding(
                                          padding: const EdgeInsets.only(bottom: 30),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                width: w * 0.4,
                                                height: 50,
                                                child: TextButton(
                                                  onPressed: () {
                                                    context.maybePop();
                                                  },
                                                  style: TextButton.styleFrom(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      side: BorderSide(color: Colors.grey[300]!),
                                                    ),
                                                  ),
                                                  child: Text(tr.cancel),
                                                ),
                                              ),
                                              SizedBox(width: 2.w),
                                              SizedBox(
                                                width: w * 0.4,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    bloc.add(const PaymentEvent.getVendorCard());
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: primary,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                  ),
                                                  child: state.maybeWhen(
                                                    loading: () => const SizedBox(
                                                      width: 20,
                                                      height: 20,
                                                      child: CircularProgressIndicator(
                                                        color: Colors.white,
                                                        strokeWidth: 2,
                                                      ),
                                                    ),
                                                    orElse: () => Text(
                                                      tr.confirm,
                                                      style: const TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                true,
                              );
                            } else {
                              bloc.add(const PaymentEvent.auth());
                            }
                          },
                          icon: const Icon(Icons.payment),
                          label: Text(
                            tr.viewCard,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: primary,
                            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: primary),
                            ),
                            elevation: 2,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        _buildAddCardButton(),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildAddCardButton() {
    return Container(
      width: 100.w,
      height: 20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: primary.withOpacity(0.3), width: 2, style: BorderStyle.solid),
        color: Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            appRoute.navigate(const CardDetailsRoute());
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: primary,
                    size: 30,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  tr.addPaymentMethod,
                  style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCustomerCard(dynamic card, int index) {
    // Generate random card type for demo purposes
    final cardTypes = ['Visa', 'Mastercard', 'Amex'];
    final cardType = cardTypes[index % cardTypes.length];
    final cardColors = [
      const Color(0xFF1A1F71), // Visa blue
      const Color(0xFFEB001B), // Mastercard red
      const Color(0xFF006FCF), // Amex blue
    ];
    final cardColor = cardColors[index % cardColors.length];
    
    return Container(
      width: 100.w,
      height: 22.h,
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      child: Stack(
        children: [
          // Card shadow
          Positioned(
            top: 5,
            left: 5,
            right: 5,
            bottom: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          // Main card
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    cardColor,
                    cardColor.withOpacity(0.8),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    // Card tap animation
                    _cardAnimationController.forward().then((_) {
                      _cardAnimationController.reverse();
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Card type and chip
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Card type
                            Text(
                              cardType,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                            // Simulated chip
                            Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        // Card number
                        Container(
                          height: 4.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildDotsGroup(),
                              Text(
                                card.last_4_digits,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Card holder and expiry
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card Holder',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 10.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  card.card_holder_name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Expires',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 10.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  '${Random().nextInt(12) + 1}/${Random().nextInt(5) + 24}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Delete button
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    showDialogPrezza(
                      context: context,
                      title: tr.deleteCard,
                      subTitle: tr.areUSureDeleteCard,
                      onTap: () {
                        // Remove from animated list
                        final indexToRemove = _cardItems.indexOf(index);
                        if (indexToRemove != -1) {
                          _listKey.currentState?.removeItem(
                            index,
                            (context, animation) => SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0, 0),
                                end: const Offset(0, -1),
                              ).animate(CurvedAnimation(
                                parent: animation,
                                curve: Curves.easeIn,
                              )),
                              child: FadeTransition(
                                opacity: animation,
                                child: SizeTransition(
                                  sizeFactor: animation,
                                  child: _buildCustomerCard(card, index),
                                ),
                              ),
                            ),
                            duration: const Duration(milliseconds: 300),
                          );
                          _cardItems.removeAt(indexToRemove);
                        }
                        
                        bloc.add(PaymentEvent.deleteCustomerCard(card.uuid));
                        context.maybePop();
                      },
                    );
                  },
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.assetsImagesTrashOutlin,
                      width: 20,
                      height: 20,
                      
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVendorCard() {
    // Generate random card type for demo purposes
    final cardTypes = ['Visa', 'Mastercard', 'Amex'];
    final cardType = cardTypes[Random().nextInt(cardTypes.length)];
    final cardColors = [
      const Color(0xFF1A1F71), // Visa blue
      const Color(0xFFEB001B), // Mastercard red
      const Color(0xFF006FCF), // Amex blue
    ];
    final cardColor = cardColors[Random().nextInt(cardColors.length)];
    
    return Container(
      width: 100.w,
      height: 24.h,
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      child: Stack(
        children: [
          // Card shadow
          Positioned(
            top: 5,
            left: 5,
            right: 5,
            bottom: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          // Main card
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    cardColor,
                    cardColor.withOpacity(0.8),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    // Card tap animation
                    _cardAnimationController.forward().then((_) {
                      _cardAnimationController.reverse();
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Card type and chip
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Card type
                            Text(
                              cardType,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                            // Simulated chip
                            Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        // Bank name
                        Text(
                          bloc.vendorCard.bank_name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Card number
                        Container(
                          height: 4.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildDotsGroup(),
                              Text(
                                bloc.vendorCard.card_last_four_digits,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Card holder and expiry
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card Holder',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 10.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  bloc.vendorCard.card_holder_name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Expires',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 10.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  '${Random().nextInt(12) + 1}/${Random().nextInt(5) + 24}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Delete button
          Positioned(
            top: -5,
            right: -5,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    showDialogPrezza(
                      context: context,
                      title: tr.deleteCard,
                      subTitle: tr.areUSureDeleteCard,
                      onTap: () {
                        bloc.add(
                          PaymentEvent.deleteVendorCard(
                            bloc.vendorCard.uuid,
                          ),
                        );
                        context.maybePop();
                      },
                    );
                  },
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.assetsImagesTrashOutlin,
                      width: 20,
                      height: 20,
                      colorFilter: ColorFilter.mode(
                        Colors.red[400]!,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDotsGroup() {
    return Row(
      children: [
        _buildDots(),
        SizedBox(width: 2.w),
        _buildDots(),
        SizedBox(width: 2.w),
        _buildDots(),
      ],
    );
  }

  Widget _buildDots() {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}