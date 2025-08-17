import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/prezza_page.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../bloc/newsfeed_bloc.dart';

@RoutePage()
class TagVendorPage extends StatefulWidget {
  const TagVendorPage({super.key});

  @override
  State<TagVendorPage> createState() => _TagVendorPageState();
}

class _TagVendorPageState extends State<TagVendorPage> {
  late final NewsfeedBloc bloc;
  String? selectedVendorId;

  @override
  void initState() {
    super.initState();
    bloc = NewsfeedBloc.get(context);
    bloc.add(const NewsfeedEvent.getTagVendor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.createPost),
      ).prezzaLeading(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SearchBar(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              leading: Icon(Icons.search, color: primary, size: 30),
              hintText: tr.searchCoffe,
            ),
          ),
          vSpace(5),

          // suggestions label
          Text(
            tr.suggestions,
            style: tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 30)),

          // bloc consumer
          Expanded(
            child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadingVendors: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  vendorsLoaded: (vendors) {
                    if (vendors.isEmpty) {
                      return Center(child: Text(tr.noResautrants));
                    }
                    return ListView.builder(
                      itemCount: vendors.length,
                      itemBuilder: (context, index) {
                        final vendor = vendors[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(vendor.business_name),
                            trailing: CircleAvatar(
                              backgroundColor: lightCream,
                              child: Radio<String>(
                                value: vendor.bussiness_id.toString(),
                                groupValue: selectedVendorId,
                                onChanged: (v) {
                                  setState(() {
                                    selectedVendorId = v;
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  failure: (error) => Center(
                    child: Text("Error: $error"),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),

          // Done button
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  appRoute.back();
                  appRoute.removeLast();
                },
                child: Text(tr.done),
              ),
            ),
          )
        ],
      ),
    );
  }
}
