import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/products/domain/entities/productdetails_entity.dart';
import 'package:prezza/features/products/domain/entities/productitem_entity.dart';
import 'package:prezza/features/products/domain/usecases/product_usecase.dart';

import '../../../cart/presentation/bloc/cart_bloc.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  static ProductBloc get(context) => BlocProvider.of(context);
  final CreateProductInstanceUsecase _createProductInstanceUsecase;
  final AddProductDetailsUsecase _addProductDetailsUsecase;
  final AddProductCategoryUsecase _addProductCategoryUsecase;
  final AddProductExtrasUsecase _addProductExtrasUsecase;
  final AddProductSideItemUsecase _addProductSideItemUsecase;
  final AddProductSizeUsecase _addProductSizeUsecase;
  final GetProductByIdUsecase _getProductByIdUsecase;
  final GetVendorProductsUsecase _getVendorProductsUsecase;
  final DeleteProductUsecase _deleteProductUsecase;
  final GetProductCategories _getProductCategories;
  final GetOftenProductsUsecase _getOftenProductsUsecase;
  final GetProductByVendorIdUsecase _getProductByVendorIdUsecase;
  final SearchProductUsecase _searchProductUsecase;
  TextEditingController itemName = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController categoryName = TextEditingController();
  TextEditingController sizeName = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController extraName = TextEditingController();
  TextEditingController question = TextEditingController();
  TextEditingController priceExtra = TextEditingController();
  TextEditingController sideItem = TextEditingController();
  TextEditingController specialReq = TextEditingController();
  List<Extras> extras = [];
  List<Extras> selectedExtras = [];
  List<ProductItemEntity> products = [];
  List<Side_items> sideItems = [];
  List<String> productIds = [];
  List<Map<String, dynamic>> sizes = [];
  List<Map<String, dynamic>> extraUI = [];
  List<Map<String, dynamic>> sideItemsUI = [];
  List<Map<String, dynamic>> selectedItems = [];
  String selectedCategory = '';
  Map<String, dynamic> selectedSize = {'name': '', 'price': 0};
  List<CategoryEntity> categories = [];
  // List<Size> sideItems = [];
  Map<String, dynamic> selectedSideItems = {};
  GlobalKey<FormState> addProductForm = GlobalKey();
  File productImg = File('');
  String productId = '';
  bool isProductSelection = false;
  num totalPrice = 0;
  bool isEditMod = false;
  Duration preparingTime = const Duration();
  int qun = 1;
  ProductDetailsEntity product = ProductDetailsEntity(
      uuid: '',
      name: '',
      product_sizes: [],
      description: '',
      main_image: '',
      price_range: '',
      extras: [],
      side_items: []);
  ProductBloc(
      this._createProductInstanceUsecase,
      this._addProductDetailsUsecase,
      this._addProductCategoryUsecase,
      this._addProductExtrasUsecase,
      this._addProductSideItemUsecase,
      this._addProductSizeUsecase,
      this._getProductByIdUsecase,
      this._getVendorProductsUsecase,
      this._deleteProductUsecase,
      this._getProductCategories,
      this._getOftenProductsUsecase,
      this._getProductByVendorIdUsecase,
      this._searchProductUsecase)
      : super(const _Initial()) {
    on<ProductEvent>(
      (event, emit) async {
        await event.maybeWhen(
          searchProduct: (query) async {},
          addToCart: () async {
            // bool isCustomerSelectAllRequiredSideItems = selectedSideItems.cont
            final q = product.side_items.map((e) => e.Question);
            final keys = selectedSideItems.keys;
            log(q.join(','));
            log(keys.join(','));
            bool isUserSelectedAllSideItems = q.join(',') == keys.join(',');
            if (selectedSize['name'].isEmpty) {
              emit(ProductState.failure(tr.pleaseSelectSize));
              return;
            }
            if (!isUserSelectedAllSideItems) {
              emit(ProductState.failure(tr.allSideItemRequired));
              emit(const ProductState.initial());
              return;
            }
            emit(const ProductState.loading());
            try {
              CartBloc.get(currentCTX).add(
                CartEvent.addItemToCart(
                  {
                    'product_uuid': product.uuid,
                    'qun': qun,
                    'size_id': selectedSize['id'],
                    'extras': selectedExtras.map((e) => e.id).join(','),
                    'side_items': selectedSideItems.values.join(','),
                    'special_request': specialReq.text,
                  },
                ),
              );
              selectedExtras.clear();
              specialReq.clear();
              selectedSideItems = {};
              selectedSize = {'name': '', 'price': 0, 'id': 0};
              totalPrice = 0;
              emit(const ProductState.success());
            } catch (e) {
              emit(ProductState.failure(e.toString()));
            }
          },
          selecteSideItem: (item) {
            emit(const ProductState.updateUi());
            selectedSideItems.addAll(item);

            emit(const ProductState.success());
          },
          selectExtra: (extra) {
            emit(const ProductState.updateUi());
            if (selectedExtras.contains(extra)) {
              totalPrice = totalPrice - extra.price;
              selectedExtras.remove(extra);
            } else {
              totalPrice = totalPrice + extra.price;
              selectedExtras.add(extra);
            }

            emit(const ProductState.success());
          },
          initalizeInEditMod: () {
            extras.clear();
            sideItems.clear();
            productImg = File('');
            sizes.clear();
            emit(const ProductState.updateUi());
            itemName = TextEditingController(text: product.name);
            productId = product.uuid;
            description = TextEditingController(text: product.description);
            if (product.extras.isNotEmpty) {
              extras.addAll(product.extras);
            }
            if (product.side_items.isNotEmpty) {
              sideItems.addAll(product.side_items);
            }
            if (product.product_sizes.isNotEmpty) {
              sizes.addAll(product.product_sizes.map((e) => e.toMap()));
            }

            productImg = File(product.main_image);
            // preparingTime = Duration(hours: product.)
            emit(const ProductState.success());
          },
          deleteProduct: (productId) async {
            emit(const ProductState.loading());
            if (productId.isEmpty) {
              for (var item in productIds) {
                final result = await _deleteProductUsecase(
                  parm: {
                    'product_uuid': item,
                  },
                );
                result.fold(
                  (err) {
                    emit(ProductState.failure(err.getMsg));
                  },
                  (res) {
                    emit(const ProductState.successUi());
                    if (item == productIds.last) {
                      productIds.clear();
                      emit(const ProductState.deleteSuccess());
                      emit(const ProductState.success());
                      isProductSelection = false;
                    }
                  },
                );
              }
            } else {
              final result = await _deleteProductUsecase(
                parm: {
                  'product_uuid': productId,
                },
              );
              result.fold(
                (err) {
                  emit(ProductState.failure(err.getMsg));
                },
                (res) {
                  itemName.clear();
                  extras.clear();
                  sideItems.clear();
                  description.clear();
                  preparingTime = const Duration();
                  productImg = File('');
                  productId = '';
                  sizes.clear();
                  emit(const ProductState.ereaseProductDetails());
                  emit(const ProductState.success());
                  isProductSelection = false;
                },
              );
            }
          },
          createProductInstance: () async {
            emit(const ProductState.loading());
            final result = await _createProductInstanceUsecase();
            result.fold((err) {
              emit(ProductState.failure(err.getMsg));
            }, (res) {
              productId = res;
              if (productId.isEmpty) {
                // emit(ProductState.failure(tr.))
              }
              emit(const ProductState.successUi());
            });
          },
          getProdcuts: () async {
            emit(const ProductState.loading());
            final result = await _getVendorProductsUsecase();
            result.fold((err) {
              emit(ProductState.failureProducts(err.getMsg));
            }, (res) {
              products = res;

              emit(const ProductState.success());
            });
          },
          getOftenProducts: () async {
            emit(const ProductState.loading());
            final result = await _getOftenProductsUsecase(
                parm: {'product_uuid': product.uuid});
            result.fold((err) {
              emit(ProductState.failure(err.getMsg));
            }, (res) {
              products = res;
              emit(const ProductState.success());
            });
          },
          getProductById: (id) async {
            emit(const ProductState.loading());
            final result = await _getProductByIdUsecase(parm: {'uuid': id});
            result.fold((err) {
              emit(ProductState.failureProductDetails(err.getMsg));
            }, (res) {
              product = res;
              sizes = List<Map<String, dynamic>>.from(
                product.product_sizes.map(
                  (e) => {
                    'id': e.id,
                    'name': e.name,
                    'price': e.price,
                  },
                ),
              );
              // add(const ProductEvent.getOftenProducts());
              emit(const ProductState.success());
            });
          },
          addProductDetails: () async {
            if (selectedCategory.isEmpty) {
              emit(ProductState.failure(tr.plsSelectCategory));
              return;
            }
            if (productImg.path.isEmpty) {
              emit(ProductState.failure(tr.plsSelectImg));
              return;
            }

            if (productId.isNotEmpty &&
                addProductForm.currentState!.validate()) {
              emit(const ProductState.loading());
              final Completer<MultipartFile> img = Completer();
              await MultipartFile.fromFile(productImg.path).then((v) {
                img.complete(v);
              });
              final result = await _addProductDetailsUsecase(parm: {
                'product_uuid': productId,
                'name': itemName.text,
                'description': description.text,
                'main_image': [await img.future],
                'prepare_time':
                    formatDuration(preparingTime).replaceAll(':', '.'),
              });
              result.fold((err) {
                emit(ProductState.failure(err.getMsg));
              }, (res) {
                itemName.clear();
                extras.clear();
                sideItems.clear();
                description.clear();
                preparingTime = const Duration();
                productImg = File('');
                productId = '';
                selectedCategory = '';
                sizes.clear();
                selectedSize = {'name': '', 'price': 0};
                emit(const ProductState.successCreated());
              });
            }
          },
          addProductCategory: () async {
            emit(const ProductState.loading());
            final result = await _addProductCategoryUsecase(
              parm: {
                'product_uuid': productId,
                'categories': categoryName.text,
                'bussiness_category': business.business_category.name,
              },
            );

            result.fold(
              (err) {
                emit(ProductState.failure(err.getMsg));
              },
              (res) {
                categoryName.clear();
                emit(const ProductState.sucessAdded());
                add(ProductEvent.getProductCateogries(
                    business.business_category.name, 'vendor'));
              },
            );
          },
          addProductExtra: () async {
            emit(const ProductState.loading());
            final result = await _addProductExtrasUsecase(parm: {
              'product_uuid': productId,
              'question': '',
              'extra_items_list': extraUI
                  .map(
                    (e) => {
                      'name': e['nameCn'].text,
                      'price': int.parse(
                          (e['priceCn'] as TextEditingController).text)
                    },
                  )
                  .toList(),
            });

            result.fold((err) {
              emit(ProductState.failure(err.getMsg));
            }, (res) {
              if (isEditMod) {
                extras.addAll(extraUI.map(
                  (e) => Extras(
                    id: 0,
                    name: e['nameCn'].text,
                    price:
                        int.parse((e['priceCn'] as TextEditingController).text),
                  ),
                ));
              } else {
                extras.addAll(
                  extraUI.map(
                    (e) => Extras(
                      id: 0,
                      name: e['nameCn'].text,
                      price: int.parse(
                          (e['priceCn'] as TextEditingController).text),
                    ),
                  ),
                );
                extras = extras.toSet().toList();
              }
              extraUI.clear();
              emit(const ProductState.sucessAdded());
            });
          },
          addProductSideItem: () async {
            emit(const ProductState.loading());
            final result = await _addProductSideItemUsecase(
              parm: {
                'product_uuid': productId,
                'question': question.text,
                'side_items': sideItemsUI
                    .map(
                      (e) => e['nameCn'].text,
                    )
                    .toList()
                    .join(','),
              },
            );

            result.fold((err) {
              emit(ProductState.failure(err.getMsg));
            }, (res) {
              final sideI = Side_items(
                  Question: question.text,
                  side_items: sideItemsUI
                      .map((e) => {
                            'name': e['nameCn'].text,
                            'id': '',
                          })
                      .toList());
              sideItems.add(sideI);
              sideItemsUI.clear();
              question.clear();
              emit(const ProductState.sucessAdded());
            });
          },
          addProductSize: () async {
            emit(const ProductState.loading());
            final result = await _addProductSizeUsecase(parm: {
              'product_uuid': productId,
              'size': sizeName.text,
              'price': price.text,
            });

            result.fold((err) {
              emit(ProductState.failure(err.getMsg));
            }, (res) {
              sizes.add({
                'name': sizeName.text,
                'price': price.text,
              });
              sizeName.clear();
              price.clear();
              emit(const ProductState.sucessAdded());
            });
          },
          getProductCateogries: (category, type) async {
            emit(const ProductState.loadingCategory());
            final result = await _getProductCategories(parm: {
              'bussiness_category': category,
              'id': category,
              'type': type,
            });

            result.fold((err) {
              emit(ProductState.failure(err.getMsg));
            }, (res) {
              categories = res;
              selectedCategory = res.isEmpty ? '' : res.first.name;
              emit(const ProductState.successCateegory());
            });
          },
          selectCategory: (String category, bool isAddPage) {
            emit(const ProductState.updateUi());
            selectedCategory = category;
            if (isAddPage) {
              emit(const ProductState.successUi());
            } else {
              emit(const ProductState.successUi());
              emit(const ProductState.success());
            }
          },
          selectPreparingTime: (time) {
            emit(const ProductState.updateUi());
            preparingTime = time;
            emit(const ProductState.successUi());
          },
          pickImage: (File img) {
            emit(const ProductState.updateUi());
            productImg = img;
            emit(const ProductState.successUi());
          },
          selectSize: (size) {
            emit(const ProductState.updateUi());
            selectedSize = sizes.firstWhere((e) => e['name'] == size);
            // totalPrice = selectedSize['price'];
            emit(const ProductState.success());
          },
          removeExtraUi: (index) {
            emit(const ProductState.updateUi());
            extraUI.removeAt(index);
            log(extraUI.length.toString());
            emit(const ProductState.successUi());
          },
          addExtraUi: () {
            emit(const ProductState.updateUi());
            extraUI.add({
              'nameCn': TextEditingController(),
              'priceCn': TextEditingController(),
            });
            emit(const ProductState.successUi());
          },
          changeStatus: (status) {
            emit(const ProductState.updateUi());
            isProductSelection = status;
            emit(const ProductState.success());
          },
          toggleSelect: (id) {
            emit(const ProductState.updateUi());
            if (id.isEmpty) {
              if (productIds.isEmpty) {
                productIds = products.map((e) => e.uuid).toList();
              } else if (productIds.length == products.length) {
                productIds.clear();
              } else {
                productIds = products.map((e) => e.uuid).toList();
              }
            } else {
              if (productIds.contains(id)) {
                productIds.remove(id);
              } else {
                productIds.add(id);
              }
            }
            emit(const ProductState.success());
          },
          removeSideItem: (item) {
            emit(const ProductState.updateUi());
            sideItemsUI.removeAt(item);
            emit(const ProductState.successUi());
          },
          addSideItemUi: () {
            emit(const ProductState.updateUi());
            sideItemsUI.add({
              'nameCn': TextEditingController(),
            });
            emit(const ProductState.successUi());
          },
          getProductByVendorId: (id, categoryId) async {
            emit(const ProductState.loading());
            try {
              final result = await _getProductByVendorIdUsecase(parm: {
                'id': id,
                'category_id': categoryId,
                'business_id': id,
              });
              result.fold((err) {
                emit(ProductState.failure(err.getMsg));
              }, (res) {
                products = res;
                emit(const ProductState.success());
              });
            } catch (e) {
              emit(ProductState.failure(e.toString()));
            }
          },
          orElse: () {},
        );
      },
    );
  }
}
