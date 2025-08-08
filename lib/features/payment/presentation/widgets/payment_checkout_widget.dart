import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../core/shared/widgets/prezza_btn.dart';
import '../../../../prezza_page.dart';
import '../bloc/payment_bloc.dart';

class PaymentCheckoutWidget extends StatefulWidget {
  const PaymentCheckoutWidget(
      {super.key, required this.selectedCard, required this.onChanged});
  final String selectedCard;
  final Function(String?) onChanged;
  @override
  State<PaymentCheckoutWidget> createState() => _PaymentCheckoutWidgetState();
}

class _PaymentCheckoutWidgetState extends State<PaymentCheckoutWidget> {
  late final PaymentBloc bloc;

  @override
  void initState() {
    bloc = PaymentBloc.get(context);
    bloc.add(const PaymentEvent.getCustomerCard());
    bloc.add(const PaymentEvent.getAccessToken());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: () {
            if (bloc.customerCard.isEmpty) {
              return Center(
                child: PrezzaBtn(
                  onTap: () {
                    appRoute.navigate(const CardDetailsRoute());
                  },
                  icon: Icon(Icons.add, color: primary),
                  title: tr.addPaymentMethod,
                ),
              );
            }
            return Column(
              children: [
                Flexible(
                  child: ListView(
                    children: bloc.customerCard.map((e) {
                      return RadioListTile(
                        value: e.uuid,
                        title: Text(
                          e.card_holder_name,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text('${"*" * 12}${e.last_4_digits}'),
                        groupValue: widget.selectedCard,
                        onChanged: widget.onChanged,
                      );
                    }).toList(),
                  ),
                ),
                PrezzaBtn(
                  onTap: () {
                    appRoute.navigate(const CardDetailsRoute());
                  },
                  icon: Icon(Icons.add, color: primary),
                  title: tr.addPaymentMethod,
                )
              ],
            );
          },
          failure: (err) => Center(child: Text(err)),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
