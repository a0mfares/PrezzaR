import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';

@RoutePage()
class ReasonPage extends StatefulWidget {
  const ReasonPage(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.isRejected = false,
      this.onReject,
      required this.onSend});
  final String icon;
  final String title;
  final String subTitle;
  final bool isRejected;
  final VoidCallback? onReject;
  final VoidCallback onSend;
  @override
  State<ReasonPage> createState() => _ReasonPageState();
}

class _ReasonPageState extends State<ReasonPage> {
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
                    onPressed: widget.onReject,
                    child: Text(tr.cancel),
                  ),
                ),
              ),
              hSpace(3),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.onSend,
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
