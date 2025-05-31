import 'package:prezza/core/helper/tools.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/shared/widgets/cached_image.dart';
import '../../../../prezza_page.dart';
import '../bloc/newsfeed_bloc.dart';

@RoutePage()
class MentionItemPage extends StatefulWidget {
  const MentionItemPage({super.key});

  @override
  State<MentionItemPage> createState() => _TagVendorPageState();
}

class _TagVendorPageState extends State<MentionItemPage> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    bloc.add(const NewsfeedEvent.getTagProduct());
    super.initState();
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SearchBar(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
              leading: Icon(Icons.search, color: primary, size: 30),
              hintText: tr.searchITem,
            ),
          ),
          vSpace(5),
          Text(
            tr.suggestions,
            style: tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 30)),
          BlocBuilder<NewsfeedBloc, NewsfeedState>(
            builder: (context, state) {
              return state.maybeWhen(
                // loadin
                orElse: () {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: bloc.products.length,
                      itemBuilder: (context, index) {
                        final product = bloc.products[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: const CachedImage(imageUrl: ''),
                            title: Text(product.name),
                            trailing: CircleAvatar(
                              backgroundColor: lightCream,
                              child: Radio(
                                value: product.uuid,
                                groupValue: bloc.selectedProductId,
                                onChanged: (v) {
                                  bloc.selectedProductId = v!;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    appRoute.back();
                    appRoute.removeLast();
                  },
                  child: Text(tr.done)),
            ),
          )
        ],
      ),
    );
  }
}
