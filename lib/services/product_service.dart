import 'package:crud_servicos/models/product.dart';
import 'package:flutter/material.dart';

class ProductsServices extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-d1097-default-rtdb.firebaseio.com';

  final List<Producto> listadeproductos = [];
}
