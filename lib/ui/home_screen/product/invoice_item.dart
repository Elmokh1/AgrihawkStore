import 'package:flutter/material.dart';
import 'package:store/DataBase/my_database.dart';
import 'package:store/ui/componant/custom_text_field.dart';

import '../../../DataBase/add_product_model.dart';

class InvoiceItem extends StatefulWidget {
  AddProductModel addProductModel;

  InvoiceItem({required this.addProductModel});

  @override
  State<InvoiceItem> createState() => _InvoiceItemState();
}

class _InvoiceItemState extends State<InvoiceItem> {
  late TextEditingController quantityController;

  @override
  void initState() {
    super.initState();
    quantityController = TextEditingController(
        text: widget.addProductModel.quantity?.toString() ?? '');
  }

  @override
  Widget build(BuildContext context) {
    int parsedQuantity =
        int.tryParse(widget.addProductModel.quantity?.toString() ?? "") ?? 0;
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 7.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                  child: Text(widget.addProductModel.product ?? ""),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.addProductModel.quantity = int.tryParse(quantityController.text) ?? 0;
                    });
                    MyDataBase.editProduct(
                      widget.addProductModel.id ?? '',
                        widget.addProductModel.quantity ?? 0,                    );
                  },
                  child: Text("ok"),
                )
              ],
            ),
            CustomTextFormField(
              Label: "الكميه",
              controller: quantityController,
              validator: (p0) {},
            )
          ],
        ),
      ),
    );
  }
}
