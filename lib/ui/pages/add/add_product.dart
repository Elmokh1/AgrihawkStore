import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store/DataBase/add_product_model.dart';

import '../../../DataBase/my_database.dart';
import '../../../dialog_utils.dart';
import '../../componant/custom_text_field.dart';

class AddProduct extends StatefulWidget {
  static const String routeName ="AddProduct";

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  var nameController = TextEditingController();
  var QuantityController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFormField(
                  controller: nameController,
                  Label: "Product Name",
                  // controller: nameController,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'Please Enter Product Name ';
                    }
                  },
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFormField(
                  controller: QuantityController,
                  Label: "Product Quantity",
                  // controller: nameController,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'Please Enter Product Quantity ';
                    }
                  },
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 80)
                  ),
                  onPressed: () {
                    Add();
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }

  void Add() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    int? quantity = int.tryParse(QuantityController.text);
    AddProductModel addProduct = AddProductModel(
      product: nameController.text ,
      quantity: quantity,
    );
    print('Adding product: $addProduct');
    print(addProduct.id);
    await MyDataBase.addProduct(addProduct);

    print('Productq added successfully');
    DialogUtils.hideDialog(context);
    Fluttertoast.showToast(
        msg: "Product Add Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

