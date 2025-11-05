import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/features/location/domain/entities/branche_entity.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/helper/widgets.dart';

class BranchesWidget extends StatefulWidget {
  const BranchesWidget(
      {super.key,
      required this.selectedBranch,
      required this.onBranchSelected,
      required this.id});
  final BrancheEntity selectedBranch;
  final Function(BrancheEntity?) onBranchSelected;
  final String id;
  @override
  State<BranchesWidget> createState() => _BranchesWidgetState();
}

class _BranchesWidgetState extends State<BranchesWidget> {
  late final VendorBloc bloc;
  BrancheEntity selectedBranch = BrancheEntity.empty();
  @override
  void initState() {
    bloc = VendorBloc.get(context);
    bloc.add(VendorEvent.getBranches(widget.id));
    selectedBranch = widget.selectedBranch;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorBloc, VendorState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => defLoadingCenter,
          failure: (v) {
            return Center(child: Text(v));
          },
          orElse: () {
            log(bloc.branches.length.toString());
            return InkWell(
              onTap: () {
                showPrezzaBtm(
                  context,
                  StatefulBuilder(
                    builder: (context, updateState) {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: bloc.branches.length,
                              itemBuilder: (context, index) {
                                final branch = bloc.branches[index];
                                return RadioListTile.adaptive(
                                  onChanged: (branch) {
                                    selectedBranch = branch!;
                                    updateState(() {});
                                  },
                                  title: Text(branch.branch_landmark),
                                  value: branch,
                                  groupValue: selectedBranch,
                                );
                              },
                            ),
                          ),
                          vSpace(3),
                          ElevatedButton(
                            onPressed: () {
                              widget.onBranchSelected(selectedBranch);
                              Navigator.of(context).pop();
                            },
                            child: Text(tr.done),
                          )
                        ],
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: lightCream,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.selectedBranch.branch_landmark.isEmpty
                          ? tr.branches
                          : widget.selectedBranch.branch_landmark,
                      style: redText,
                    ),
                    Icon(Icons.keyboard_arrow_down, color: primary),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
