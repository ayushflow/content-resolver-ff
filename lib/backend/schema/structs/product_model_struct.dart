// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductModelStruct extends BaseStruct {
  ProductModelStruct({
    String? name,
    String? category,
    int? inventory,
    String? id,
  })  : _name = name,
        _category = category,
        _inventory = inventory,
        _id = id;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "inventory" field.
  int? _inventory;
  int get inventory => _inventory ?? 0;
  set inventory(int? val) => _inventory = val;
  void incrementInventory(int amount) => _inventory = inventory + amount;
  bool hasInventory() => _inventory != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static ProductModelStruct fromMap(Map<String, dynamic> data) =>
      ProductModelStruct(
        name: data['name'] as String?,
        category: data['category'] as String?,
        inventory: castToType<int>(data['inventory']),
        id: data['id'] as String?,
      );

  static ProductModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'category': _category,
        'inventory': _inventory,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'inventory': serializeParam(
          _inventory,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        inventory: deserializeParam(
          data['inventory'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductModelStruct &&
        name == other.name &&
        category == other.category &&
        inventory == other.inventory &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, category, inventory, id]);
}

ProductModelStruct createProductModelStruct({
  String? name,
  String? category,
  int? inventory,
  String? id,
}) =>
    ProductModelStruct(
      name: name,
      category: category,
      inventory: inventory,
      id: id,
    );
