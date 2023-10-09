import 'dart:ffi';

class AddProductModel {
  // data class
  static const String collectionName = 'add';
  String? id;
  String? product;
  int? quantity;

  AddProductModel({this.id, this.product, this.quantity});

  AddProductModel.fromFireStore(Map<String, dynamic>? data)
      : this(id: data?['id'], product: data?['product'], quantity: data?['quantity']);

  Map<String, dynamic> toFireStore() {
    return {'id': id, 'product': product, 'quantity': quantity};
  }
}