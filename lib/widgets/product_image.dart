import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10, top: 10),
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: _decoracion(),
        child: const ClipRRect(
          borderRadius:  BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45)),
          child:  FadeInImage(
            image:  NetworkImage('https://via.placeholder.com/400x300/blue'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  BoxDecoration _decoracion() =>  const BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45)),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
        offset: Offset(0, 5)
      )
    ]

  );
}