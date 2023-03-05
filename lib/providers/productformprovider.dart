import 'package:crud_servicos/models/models.dart';
import 'package:flutter/material.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Producto producto;

  ProductFormProvider(this.producto);
  

  bool isValidForm() {
    return formkey.currentState?.validate() ?? false;
  }
}
