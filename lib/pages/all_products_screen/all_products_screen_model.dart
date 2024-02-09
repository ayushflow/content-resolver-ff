import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_products_screen_widget.dart' show AllProductsScreenWidget;
import 'package:flutter/material.dart';

class AllProductsScreenModel extends FlutterFlowModel<AllProductsScreenWidget> {
  ///  Local state fields for this page.

  List<ProductModelStruct> products = [];
  void addToProducts(ProductModelStruct item) => products.add(item);
  void removeFromProducts(ProductModelStruct item) => products.remove(item);
  void removeAtIndexFromProducts(int index) => products.removeAt(index);
  void insertAtIndexInProducts(int index, ProductModelStruct item) =>
      products.insert(index, item);
  void updateProductsAtIndex(
          int index, Function(ProductModelStruct) updateFn) =>
      products[index] = updateFn(products[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - queryProducts] action in AllProductsScreen widget.
  List<ProductModelStruct>? productsData;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
