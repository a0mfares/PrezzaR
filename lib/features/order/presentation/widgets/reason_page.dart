import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';
import 'package:prezza/prezza_page.dart';

@RoutePage()
class ReasonPage extends StatefulWidget {
  const ReasonPage({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.orderId,
    this.isRejected = false,
  });
  final String icon;
  final String title;
  final String subTitle;
  final String orderId;
  final bool isRejected;

  @override
  State<ReasonPage> createState() => _ReasonPageState();
}

class _ReasonPageState extends State<ReasonPage> {
  final TextEditingController _reasonController = TextEditingController();

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar().prezzaLeading(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(widget.icon),
          vSpace(3),
          Text(
            widget.title,
            style: tstyle.headlineSmall,
          ),
          vSpace(2),
          Text(widget.subTitle),
          vSpace(2),
          TextFormField(
            controller: _reasonController,
            decoration: InputDecoration(
              hintText: tr.writeHere,
            ),
            minLines: 5,
            maxLines: 5,
          ).prezaa(margin: const EdgeInsets.symmetric(horizontal: 50)),
          vSpace(3),
          Row(
            children: [
              Visibility(
                visible: widget.isRejected,
                child: Expanded(
                  child: TextButton(
                    onPressed: () {
                      appRoute.maybePop();
                    },
                    child: Text(tr.cancel),
                  ),
                ),
              ),
              hSpace(3),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    final reason = _reasonController.text.trim();
                    
                    if (reason.isEmpty) {
                      BotToast.showText(text: 'Please enter a reason');
                      return;
                    }
                    
                    if (widget.isRejected) {
                      OrderBloc.get(context).add(
                        OrderEvent.rejectOrder(
                          widget.orderId,
                           reason,
                        ),
                      );
                    } else {
                      OrderBloc.get(context).add(
                        OrderEvent.acceptOrder(
                           widget.orderId,
                           reason,
                        ),
                      );
                    }
                    
                    // Navigate back after submitting
                    appRoute.replace(const VendorHomeRoute());
                  },
                  child: Text(tr.send),
                ),
              ),
            ],
          ).margin(
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),
        ],
      ),
    );
  }
}