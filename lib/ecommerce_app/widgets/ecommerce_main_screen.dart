import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/data.dart';
import 'package:flutter_application_8/ecommerce_app/models/product_models.dart';
import 'package:flutter_application_8/ecommerce_app/widgets/product_widget.dart';

class ecommerce_main_screen extends StatelessWidget {
  late List<Product> listOfProducts;
  ecommerce_main_screen() {
    listOfProducts = data.map((e) => Product.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ECOMMERCE'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
                height: 200,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3),
                    itemCount: listOfProducts.length,
                    itemBuilder: (c, index) {
                      return ProductWidget(listOfProducts[index]);
                    })),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3),
                    itemCount: listOfProducts.length,
                    itemBuilder: (c, index) {
                      return ProductWidget(listOfProducts[index]);
                    }))
          ],
        ),
      ),
    );
  }
}
