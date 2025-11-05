// ignore_for_file: no_wildcard_variable_uses

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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

class _PaymentCardPageState extends State<PaymentCardPage> {
  late final PaymentBloc bloc;

  @override
  void initState() {
    bloc = PaymentBloc.get(context);
    // bloc.add(const PaymentEvent.getCreditCards());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // actions: [],
      ).prezzaLeading(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: () {
                if (isCustomer) {
                  return ListView.builder(
                    itemCount: bloc.customerCard.length + 1,
                    itemBuilder: (context, index) {
                      if (bloc.customerCard.length == index) {
                        return PrezzaBtn(
                          onTap: () {
                            appRoute.navigate(const CardDetailsRoute());
                          },
                          icon: Icon(
                            Icons.add,
                            color: primary,
                          ),
                          title: tr.addPaymentMethod,
                        );
                      }
                      final card = bloc.customerCard[index];
                      return SizedBox(
                        width: 100.w,
                        height: 30.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(Assets.assetsImagesCard),
                            hSpace(3),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    card.card_holder_name,
                                    style: tstyle.headlineSmall,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  vSpace(1),
                                  Text(
                                      '* * * * * * * * * * * * * * * * ${card.last_4_digits}'),
                                ],
                              ),
                            ),
                            hSpace(3),
                            InkWell(
                              onTap: () {
                                showDialogPrezza(
                                  context: context,
                                  title: tr.deleteCard,
                                  subTitle: tr.areUSureDeleteCard,
                                  onTap: () {
                                    bloc.add(
                                      PaymentEvent.deleteCustomerCard(
                                          card.uuid),
                                    );
                                    context.maybePop();
                                  },
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: lightCream,
                                child:
                                    SvgPicture.asset(Assets.assetsImagesTrash),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
                return InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 100.w,
                    height: 30.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(Assets.assetsImagesCard),
                        hSpace(3),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                bloc.vendorCard.bank_name,
                                style: tstyle.headlineSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                bloc.vendorCard.card_holder_name,
                                style: tstyle.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                              vSpace(1),
                              Text(
                                  '* * * * * * * * * * * * * * * * ${bloc.vendorCard.card_last_four_digits}'),
                            ],
                          ),
                        ),
                        hSpace(3),
                        InkWell(
                          onTap: () {
                            showDialogPrezza(
                              context: context,
                              title: tr.deleteCard,
                              subTitle: tr.areUSureDeleteCard,
                              onTap: () {
                                bloc.add(
                                  PaymentEvent.deleteVendorCard(
                                      bloc.vendorCard.card_last_four_digits),
                                );
                                context.maybePop();
                              },
                            );
                          },
                          child: CircleAvatar(
                            backgroundColor: lightCream,
                            child: SvgPicture.asset(Assets.assetsImagesTrash),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              orElse: () {
                if (isCustomer) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.assetsImagesEmptyLocation,
                            width: 30.w),
                        vSpace(3),
                        PrezzaBtn(
                          onTap: () {
                            appRoute.navigate(const CardDetailsRoute());
                          },
                          icon: Icon(
                            Icons.add,
                            color: primary,
                          ),
                          title: tr.addPaymentMethod,
                        )
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
                          if (HiveStorage.get(kPass, defaultValue: null)
                                  .toString() ==
                              "null") {
                            showPrezzaBtm(
                                context,
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    vSpace(3),
                                    Text(tr.plsAuth),
                                    vSpace(3),
                                    TextFormField(
                                      controller: bloc.password,
                                      decoration: InputDecoration(
                                        hintText: tr.password,
                                      ),
                                    ).prezaa(),
                                    vSpace(3),
                                    BlocConsumer<PaymentBloc, PaymentState>(
                                      listener: (context, state) {
                                        if (bloc.isAuthenticated) {
                                          context.maybePop();
                                        }
                                        state.maybeMap(
                                          failure: (_) {
                                            BotToast.showText(text: _.err);
                                          },
                                          success: (v) {
                                            context.maybePop();
                                            context.maybePop();
                                            showPrezzaBtm(
                                              context,
                                              Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(tr.useBiometrics),
                                                    vSpace(3),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        bloc.add(
                                                            const PaymentEvent
                                                                .auth());
                                                      },
                                                      child: Text(tr.ok),
                                                    ),
                                                    vSpace(2),
                                                    TextButton(
                                                      onPressed: () {
                                                        context.maybePop();
                                                      },
                                                      child: Text(tr.cancel),
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
                                          padding: const EdgeInsets.only(
                                            bottom: 30,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                width: w * 0.4,
                                                height: 50,
                                                child: TextButton(
                                                  onPressed: () {
                                                    context.maybePop();
                                                  },
                                                  child: Text(tr.cancel),
                                                ),
                                              ),
                                              hSpace(1),
                                              SizedBox(
                                                width: w * 0.4,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    bloc.add(const PaymentEvent
                                                        .getVendorCard());
                                                  },
                                                  child: state.maybeWhen(
                                                    loading: () =>
                                                        defLoadingCenter,
                                                    orElse: () =>
                                                        Text(tr.confirm),
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
                                true);
                          } else {
                            bloc.add(const PaymentEvent.auth());
                          }
                        },
                        icon: const Icon(Icons.payment),
                        label: Text(tr.viewCard),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            vSpace(3),
                            PrezzaBtn(
                              onTap: () {
                                appRoute.navigate(const CardDetailsRoute());
                              },
                              icon: Icon(
                                Icons.add,
                                color: primary,
                              ),
                              title: tr.addPaymentMethod,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
