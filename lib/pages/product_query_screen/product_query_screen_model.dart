import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_query_screen_widget.dart' show ProductQueryScreenWidget;
import 'package:flutter/material.dart';

class ProductQueryScreenModel
    extends FlutterFlowModel<ProductQueryScreenWidget> {
  ///  Local state fields for this page.

  ProductModelStruct? searchedProductData;
  void updateSearchedProductDataStruct(Function(ProductModelStruct) updateFn) =>
      updateFn(searchedProductData ??= ProductModelStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - queryProducts] action in Button widget.
  List<ProductModelStruct>? queriedProducts;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
