part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.createProductInstance() = _CreateProductInstance;
  const factory ProductEvent.addProductDetails() = _AddProductDetails;
  const factory ProductEvent.addProductCategory() = _AddProductCategory;
  const factory ProductEvent.addProductExtra() = _AddProductExtra;
  const factory ProductEvent.addProductSize() = _AddProductSize;
  const factory ProductEvent.addProductSideItem() = _AddProductSideItem;
  const factory ProductEvent.deleteProduct(String productId) = _DeleteProduct;
  const factory ProductEvent.getVendorProducts() = _GetVendorProducts;
  const factory ProductEvent.getProductDetails(String id) = _GetProductDetails;
  const factory ProductEvent.getProductCateogries(
      String category, String type) = _GetProductCateogries;
  const factory ProductEvent.addExtraUi() = _AddExtraUi;
  const factory ProductEvent.removeExtraUi(int index) = _RemoveExtraUi;
  const factory ProductEvent.addSideItemUi() = _AddSideItemUi;
  const factory ProductEvent.removeSideItem(int index) = _RemoveSideItem;
  const factory ProductEvent.getProdcuts() = _GetProdcuts;
  const factory ProductEvent.getProductById(String id) = _GetProductById;
  const factory ProductEvent.changeStatus(bool status) = _ChangeStatus;
  const factory ProductEvent.toggleSelect(String id) = _ToggleSelect;
  const factory ProductEvent.initalizeInEditMod() = _InitalizeInEditMod;
  const factory ProductEvent.getOftenProducts() = _getOftenProducts;
  const factory ProductEvent.getProductByVendorId(String id,
      [String? categoryId]) = _GetProductByVendorId;
  const factory ProductEvent.selectExtra(Extras extra) = _SelectExtra;
  const factory ProductEvent.selecteSideItem(Map<String, dynamic> item) =
      _SelecteSideItem;
  const factory ProductEvent.addToCart() = _AddToCart;

  const factory ProductEvent.selectCategory(String category, bool isAddPage) =
      _SelectCategory;
  const factory ProductEvent.searchProduct(String query) = _SearchProduct;

  const factory ProductEvent.selectSize(String size) = _SelectSize;
  const factory ProductEvent.selectPreparingTime(Duration time) =
      _SelectPreparingTime;
  const factory ProductEvent.pickImage(File img) = _PickImage;
}
