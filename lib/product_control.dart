import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  const ProductControl(this.addProduct,  {Key? key}) : super(key: key);

  final Function addProduct;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
      ),
      onPressed: () {
        addProduct('Sweets');
      },
      child: const Text('Add product'),
    );
  }
}
