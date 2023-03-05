import 'package:crud_servicos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ProductosView"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: const [
                ProductImage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
