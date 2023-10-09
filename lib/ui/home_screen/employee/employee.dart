import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/ui/pages/invoice/invoice.dart';
import 'package:store/ui/pages/stock/stock.dart';

import '../../../DataBase/add_product_model.dart';
import '../../../DataBase/my_database.dart';
import '../../componant/custom_container.dart';
import '../../pages/add/add_product.dart';
import '../../pages/store/store.dart';
import '../product/product_item.dart';



class Employee extends StatelessWidget {

  static const String  routeName = "Employee";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomContainer(
            text: "المخزن",
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Store(),
                ),
              );
            },
          ),
          SizedBox(
            height: 40,
          ),
          CustomContainer(
            text: "اضافه فاتوره",
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Invoice(),
                ),
              );
            },

          ),
          SizedBox(
            height: 40,
          ),
          CustomContainer(
            text: "كميه قليله",
            onTap: (){
              Navigator.push(
                  context,
              MaterialPageRoute(
                builder: (context) => Stock(),
              ));
            },

          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
