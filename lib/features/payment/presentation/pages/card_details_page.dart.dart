import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../config/custom_colors.dart';
import '../bloc/payment_bloc.dart';

@RoutePage()
class CardDetailsPage extends StatefulWidget {
  const CardDetailsPage({super.key});

  @override
  State<CardDetailsPage> createState() => _CardDetailsPageState();
}

class _CardDetailsPageState extends State<CardDetailsPage> {
  late final PaymentBloc bloc;
  void _onCardNumberChanged(String value) {
    // Remove any non-digit characters
    bloc.formCard.currentState!.validate();
    String formatted = value.replaceAll(RegExp(r'[^0-9]'), '');

    // Format the card number in groups of 4 digits
    if (formatted.length > 4) {
      formatted = formatted.replaceRange(
          4, formatted.length, ' ${formatted.substring(4)}');
    }
    if (formatted.length > 9) {
      formatted = formatted.replaceRange(
          9, formatted.length, ' ${formatted.substring(9)}');
    }
    if (formatted.length > 14) {
      formatted = formatted.replaceRange(
          14, formatted.length, ' ${formatted.substring(14)}');
    }

    setState(() {
      bloc.cardNumber.text = formatted;
      bloc.cardNumber.selection = TextSelection.fromPosition(
          TextPosition(offset: bloc.cardNumber.text.length));
    });
  }

  @override
  void initState() {
    bloc = PaymentBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.addNewAddress),
      ).prezzaLeading(),
      body: BlocListener<PaymentBloc, PaymentState>(
        listener: (context, state) {
          state.maybeMap(
            failure: (v) {
              BotToast.showText(text: v.err);
            },
            successAdded: (v) {
              BotToast.showText(text: 'Card Added Success');
            },
            orElse: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: bloc.formCard,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: bloc.holderName,
                  validator: (v) {
                    if (v!.isEmpty) {
                      return tr.cardHolderName;
                    }
                    return null;
                  },
                  onChanged: (v) {
                    bloc.formCard.currentState!.validate();
                  },
                  decoration: InputDecoration(
                    hintText: tr.enterYourName,
                  ),
                ).prezaa(
                  label: tr.cardHolderName,
                ),
                vSpace(3),
                TextFormField(
                  validator: (v) {
                    if (v!.isEmpty) {
                      return tr.cardNumber;
                    }
                    return null;
                  },
                  controller: bloc.cardNumber,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: tr.writeHere,
                  ),
                  onChanged: _onCardNumberChanged,
                  maxLength: 19,
                ).prezaa(
                  label: tr.cardNumber,
                ),
                TextFormField(
                  validator: (v) {
                    if (v!.isEmpty) {
                      return tr.bankName;
                    }
                    return null;
                  },
                  onChanged: (v) {
                    bloc.formCard.currentState!.validate();
                  },
                  controller: bloc.bankName,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: tr.writeHere,
                  ),
                ).prezaa(
                  label: tr.bankName,
                ),
                vSpace(3),
                Visibility(
                  visible: isCustomer,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: bloc.expirDate,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return tr.expiryDate;
                            }
                            if ((int.parse('${v[0]}${v[1]}')) > 12) {
                              return tr.enterValideDate;
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            CardMonthInputFormatter(),
                          ],
                          keyboardType: TextInputType.number,
                          maxLength: 5,
                          onChanged: (v) {
                            bloc.formCard.currentState!.validate();
                          },
                          decoration: const InputDecoration(
                            hintText: '03/25',
                          ),
                        ).prezaa(
                          label: tr.expiryDate,
                        ),
                      ),
                      hSpace(3),
                      Expanded(
                        child: TextFormField(
                          controller: bloc.cvv ,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return tr.cvv;
                            }
                            return null;
                          },
                          onChanged: (v) {
                            bloc.formCard.currentState!.validate();
                          },
                          decoration: const InputDecoration(
                            hintText: '123',
                          ),
                        ).prezaa(
                          label: tr.cvv,
                        ),
                      ),
                    ],
                  ),
                ),
                vSpace(3),
                BlocConsumer<PaymentBloc, PaymentState>(
                  listener: (context, state) {
                    state.maybeMap(
                      failure: (er) {
                        BotToast.showText(text: er.err);
                      },
                      success: (er) {
                        if (mounted) {
                          appRoute.back();
                        }
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (isCustomer) {
                          bloc.add(const PaymentEvent.addCustomerCard());
                        } else {
                          bloc.add(const PaymentEvent.addVendorCard());
                        }
                      },
                      child: state.maybeWhen(
                        loading: () => LoadingAnimationWidget.twistingDots(
                            leftDotColor: lightCoral,
                            rightDotColor: lightCream,
                            size: 20),
                        failure: (v) => Text(tr.add),
                        success: () => Text(tr.add),
                        orElse: () => Text(tr.add),
                      ),
                    );
                  },
                ),
                vSpace(4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
