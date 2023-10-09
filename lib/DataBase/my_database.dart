


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store/DataBase/add_product_model.dart';



class MyDataBase{
  static CollectionReference<AddProductModel> getAddProductCollection() {
    return FirebaseFirestore.instance
        .collection(AddProductModel.collectionName)
        .withConverter<AddProductModel>(
      fromFirestore: (snapshot, options) =>
          AddProductModel.fromFireStore(snapshot.data()),
      toFirestore: (add, options) => add.toFireStore(),
    );
  }


  static Future<void> addProduct(AddProductModel addProduct) {
    var addproduct = getAddProductCollection().doc();
    addProduct.id = addproduct.id;
    return addproduct.set(addProduct);
  }



  static Stream<QuerySnapshot<AddProductModel>> getAddProductRealTimeUpdate() {
    return getAddProductCollection().snapshots();

  }
  static Future<void> editProduct(String productId, int quantity) {
    return getAddProductCollection().doc(productId).update({
      "quantity": quantity,
    });
  }



}