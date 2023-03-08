import 'package:easy_list/product_control.dart';
import 'package:easy_list/products.dart';
import 'package:flutter/material.dart';

class ProductManager extends StatefulWidget {
   ProductManager(this.startingProduct, {Key? key}) : super(key: key){
   //print('[Product Manager State] Constructor()');
  }



  final String startingProduct;

  @override
  State<ProductManager> createState() {
    // print('[Product Manager State] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    //print('[Product Manager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  void didUpdateWidget(ProductManager oldWidget){
    //print('[Product Manager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product){
    setState(() {
      _products.add(product);
    },);
  }
  @override
  Widget build(BuildContext context) {
    //print('[Product Manager State] build()');
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
         Products(_products),
      ],
    );
  }
}
