import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products(this.products, {Key? key}) : super(key: key);

  final List<String> products;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: products.map((element) => Card(
          child: Column(
            children: [
              Image.asset('assets/sniper.jpg'),
              Text(element),
            ],
          ),
        ),
        ).toList()
    );
  }
}
