import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  String text;
  Function() onTap;


  CustomContainer({required this.text,required this.onTap});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            color: Colors.white,
          ),
          width: double.infinity,
          child: Center(child: Text( widget.text)),
        ),
      ),
    );
  }
}
