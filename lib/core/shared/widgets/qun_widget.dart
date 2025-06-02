import 'package:flutter/material.dart';

import '../../../config/custom_colors.dart';
import '../../helper/tools.dart';

class QunWidget extends StatefulWidget {
  const QunWidget(
      {super.key,
      required this.isAdded,
      required this.qun,
      required this.onAdd,
      required this.onRemove});
  final bool isAdded;

  final int qun;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  @override
  State<QunWidget> createState() => _QunWidgetState();
}

class _QunWidgetState extends State<QunWidget> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isCustomer,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.isAdded ? 70 : 40,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(15),
          color: widget.isAdded ? primary : lightCream,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.isAdded) ...[
              InkWell(
                onTap: widget.onAdd,
                child: Icon(
                  Icons.remove,
                  color: widget.isAdded ? lightCream : primary,
                ),
              ),
              hSpace(1),
              Text(
                widget.qun.toString(),
                style: tstyle.bodyMedium!.copyWith(
                  color: widget.isAdded ? lightCream : primary,
                ),
              ),
              hSpace(1),
            ],
            InkWell(
              onTap: widget.onRemove,
              child: Icon(
                Icons.add,
                color: widget.isAdded ? lightCream : primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
