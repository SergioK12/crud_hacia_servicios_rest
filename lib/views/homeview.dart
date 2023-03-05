import 'package:crud_servicos/services/product_service.dart';
import 'package:crud_servicos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final productprovider = Provider.of<ProductsServices>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) => Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (MediaQuery.of(context).size.height * 0.02)),
                child: GestureDetector(
                  child: const ProductCard(),
                  onTap: () => Navigator.pushNamed(context, 'product'),
                ),
              )),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
