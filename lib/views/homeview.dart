import 'package:crud_servicos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index )=> Padding(
          padding:  EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.height * 0.02)),
          child: const ProductCard(),
        )


      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){

        }
        ),
      
    );
  }
}