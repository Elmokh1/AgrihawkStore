import 'package:flutter/material.dart';

import '../../../DataBase/add_product_model.dart';

class StockItem extends StatefulWidget {
  AddProductModel addProductModel;

  StockItem({required this.addProductModel});

  @override
  State<StockItem> createState() => _StockItemState();
}

class _StockItemState extends State<StockItem> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return (widget.addProductModel.quantity ?? 0) <= 200 ? Padding(
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
    ):SizedBox.shrink();
  }
}
