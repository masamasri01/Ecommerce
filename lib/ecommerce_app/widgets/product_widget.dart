import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/ecommerce_app/models/product_models.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  ProductWidget(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow,
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      child: Column(children: [
        SizedBox(
          height: 120,
          width: double.infinity,
          child: Image.network(
            product.image ?? '',
            errorBuilder: (x, y, z) {
              return Center(
                child: Icon(Icons.broken_image),
              );
            },
          ),
        ),
        Expanded(
            child: Text(
          product.title ?? 'not found',
          textScaleFactor: 1.1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ))
      ]),
    );
    throw UnimplementedError();
  }
}
