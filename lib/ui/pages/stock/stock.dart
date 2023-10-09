import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/ui/home_screen/product/stock_item.dart';

import '../../../DataBase/add_product_model.dart';
import '../../../DataBase/my_database.dart';
import '../../home_screen/product/product_item.dart';



class Stock extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot<AddProductModel>>(
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                var productList = snapshot.data?.docs.map((doc) => doc.data()).toList();
                if (productList?.isEmpty == true) {
                  return Center(
                    child: Text(
                      "!! فاضي ",
                      style: GoogleFonts.abel(
                        fontSize: 30,
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  itemBuilder: (context, index) {
                    final product = productList![index];
                    return StockItem(addProductModel:product);
                  },
                  itemCount: productList?.length ?? 0,
                );
              },
              stream: MyDataBase.getAddProductRealTimeUpdate(),
            ),
          ),
        ],
      ),
    );
  }
}
