import 'package:flutter/material.dart';
import 'package:store/DataBase/add_product_model.dart';



class ProductItem extends StatefulWidget {
  AddProductModel addProductModel;


  ProductItem({required this.addProductModel});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0)),
                child:  Text(widget.addProductModel.product ?? ""),
            ),
            const Spacer(),
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0)),
                child:  Text(widget.addProductModel.quantity.toString() ?? ""),
            ),

          ],
        ),
      ),
    );;
  }
}
