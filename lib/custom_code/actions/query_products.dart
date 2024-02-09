// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom actions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:android_content_provider/android_content_provider.dart';

Future<List<ProductModelStruct>> queryProducts(
  String? id,
  String? name,
  String? category,
  String? sortOrder,
) async {
  // Get the URI for the products table
  const productsUri = '${FFAppConstants.baseContentProviderUri}/products';

  // Work out the filters
  String selection = '';
  List<String> selectionArgs = [];

  if (id != null && id.isNotEmpty) {
    // If ID is present, use it for selection and ignore name and category
    selection = 'id = ?';
    selectionArgs.add(id);
  } else {
    // If ID is not present, check for name
    if (name != null && name.isNotEmpty) {
      selection += 'name = ?';
      selectionArgs.add(name);
    }
    // Check for category, append condition if name is also present
    if (category != null && category.isNotEmpty) {
      if (selection.isNotEmpty) {
        selection += ' AND ';
      }
      selection += 'category = ?';
      selectionArgs.add(category);
    }
  }

  // Check if a sortOrder was specified, otherwise specify a default one
  final querySortOrder = sortOrder ?? 'name ASC';

  try {
    final cursor = await AndroidContentResolver.instance.query(
      uri: productsUri,
      projection: ['id', 'name', 'category', 'inventory'],
      selection: selection,
      selectionArgs: selectionArgs,
      sortOrder: querySortOrder,
    );
    if (cursor == null) {
      return <ProductModelStruct>[];
    }

    // Get the data from the cursor and return
    final batch = _getProductDataBatchFromCursor(cursor);
    final productCount =
        (await cursor.batchedGet().getCount().commit()).first as int;

    if (productCount == 0) {
      return <ProductModelStruct>[];
    }

    final productsData = await batch.commitRange(0, productCount);
    final products = productsData
        .map(
          (data) => getProductFromCursorData(data),
        )
        .toList();

    return products;
  } catch (error, stacktrace) {
    print(error);
    print(stacktrace);
    return <ProductModelStruct>[];
  }
}

NativeCursorGetBatch _getProductDataBatchFromCursor(NativeCursor cursor) {
  return cursor.batchedGet()
    ..getString(0)
    ..getString(1)
    ..getString(2)
    ..getInt(3);
}

ProductModelStruct getProductFromCursorData(List<Object?> data) {
  return ProductModelStruct(
    id: data[0] as String,
    name: data[1] as String,
    category: data[2] as String,
    inventory: data[3] as int,
  );
}
