import 'dart:convert';

import 'package:crud_servicos/models/product.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ProductsServices extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-d1097-default-rtdb.firebaseio.com';
  bool isLoading = true;
  Producto? selectedProduct;

  final List<Producto> listadeproductos = [];

  ProductsServices() {
    loadProducts();
  }

  Future<List<Producto>> loadProducts() async {
    notifyListeners();
    final url = Uri.https(_baseUrl, 'Productos.json');
    final resp = await http.get(url);

    final Map<String, dynamic> productsMap = json.decode(resp.body);

    productsMap.forEach((key, value) {
      final productoTemporal = Producto.fromMap(value);
      productoTemporal.id = key;
      listadeproductos.add(productoTemporal);
    });

    if (kDebugMode) {
      print(listadeproductos[0].nombre);
    }
    isLoading = false;
    notifyListeners();

    return listadeproductos;
  }
}
