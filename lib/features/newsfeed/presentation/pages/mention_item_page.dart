import 'package:prezza/core/helper/tools.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import '../../../../config/custom_colors.dart';
import '../../../../prezza_page.dart';
import '../bloc/newsfeed_bloc.dart';

@RoutePage()
class MentionItemPage extends StatefulWidget {
  const MentionItemPage({super.key});

  @override
  State<MentionItemPage> createState() => _MentionItemPageState();
}

class _MentionItemPageState extends State<MentionItemPage> {
  late final NewsfeedBloc bloc;
  String? selectedProductId;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    // Load initial products
    bloc.add(const NewsfeedEvent.getTagProduct());
    super.initState();
  }

  void _searchProducts() {
    if (bloc.searchController.text.trim().isNotEmpty) {
      bloc.add(const NewsfeedEvent.getTagProduct());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.mentionItem),
      ).prezzaLeading(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SearchBar(
              controller: bloc.searchController,
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
              leading: Icon(Icons.search, color: primary, size: 30),
              hintText: tr.searchITem,
              onChanged: (value) {
                // Debounce search - you might want to add a timer here
                if (value.isNotEmpty) {
                  _searchProducts();
                }
              },
              onSubmitted: (value) {
                _searchProducts();
              },
            ),
          ),
          vSpace(5),
          Text(
            tr.suggestions,
            style: tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ).margin(margin: const EdgeInsets.symmetric(horizontal: 30)),
          vSpace(2),
          Expanded(
            child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loadingProducts: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  productsLoaded: (products) {
                    if (products.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.inventory_2_outlined,
                              size: 64,
                              color: Colors.grey.shade400,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'No products found',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              ),
                            ),
                            if (bloc.searchController.text.isNotEmpty)
                              Text(
                                'Try searching for something else',
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 14,
                                ),
                              ),
                          ],
                        ),
                      );
                    }

                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 4,
                          ),
                          child: Card(
                            child: ListTile(
                              title: Text(
                                product.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: CircleAvatar(
                                backgroundColor: lightCream,
                                child: Radio<String>(
                                  value: product.uuid,
                                  groupValue: selectedProductId,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedProductId = value;
                                    });
                                  },
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedProductId = product.uuid;
                                });
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  failure: (error) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Colors.red.shade400,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error loading products',
                            style: TextStyle(
                              color: Colors.red.shade600,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            error,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              bloc.add(const NewsfeedEvent.getTagProduct());
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  },
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedProductId != null
                      ? () {
                          // You might want to pass the selected product back
                          // or save it in the bloc for use in post creation
                          appRoute.back();
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    selectedProductId != null
                        ? '${tr.done} - Product Selected'
                        : tr.done,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
