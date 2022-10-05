import 'package:flutter/material.dart';
import 'data.dart';
import 'ecommerce_app/models/product_models.dart';
import 'ecommerce_app/widgets/ecommerce_main_screen.dart';
import 'ecommerce_app/widgets/product_widget.dart';

void main() {
  runApp(MaterialApp(
    home: ecommerce_main_screen(),
  ));
}
