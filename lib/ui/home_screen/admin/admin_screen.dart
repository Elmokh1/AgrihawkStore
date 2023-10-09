import 'package:flutter/material.dart';
import 'package:store/ui/componant/custom_container.dart';
import 'package:store/ui/pages/add/add_product.dart';
import 'package:store/ui/pages/stock/stock.dart';
import 'package:store/ui/pages/store/store.dart';

class AdminScreen extends StatefulWidget {
  static const String routeName = "AdminScreen";

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AgriHawk"), backgroundColor: Colors.red),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
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
            text: "اضافه منتج",
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddProduct(),
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
                ),
              );
            },

          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
