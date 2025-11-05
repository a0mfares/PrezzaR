import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../config/custom_colors.dart';

class ToggleBtnPezza extends StatefulWidget {
  const ToggleBtnPezza(
      {super.key,
      required this.items,
      required this.onSelectedItem,
      this.bgColor,
      this.txtColor,
      this.selectedBgColor,
      this.selectedTxtColor,
      required this.selectedItem,
      this.width = 100,
      this.height = 50});
  final String selectedItem;
  final List<String> items;
  final Function(String item) onSelectedItem;
  final Color? bgColor;
  final Color? txtColor;
  final Color? selectedBgColor;
  final Color? selectedTxtColor;
  final double width;
  final double height;
  @override
  State<ToggleBtnPezza> createState() => _ToggleBtnPezzaState();
}

class _ToggleBtnPezzaState extends State<ToggleBtnPezza> {
  late final List<bool> isSelected;
  int selectIndex = 0;
  @override
  void initState() {
    isSelected = List.generate(widget.items.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 100.w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final isSelected = widget.items[index] == widget.selectedItem;
            final item = widget.items[index];
            return Padding(
              padding: const EdgeInsets.all(8),
              child: OutlinedButton(
                onPressed: () => widget.onSelectedItem(item),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: widget.bgColor ?? primary,
                  ),
                  foregroundColor: isSelected
                      ? widget.selectedTxtColor ?? lightCream
                      : widget.txtColor ?? primary,
                  backgroundColor: isSelected
                      ? widget.selectedBgColor ?? primary
                      : widget.bgColor,
                  minimumSize: const Size(94, 37),
                  maximumSize: const Size(94, 37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(item),
              ),
            );
          }),
    );
  } 
}
