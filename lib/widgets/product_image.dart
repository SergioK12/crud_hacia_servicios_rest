import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String? imagenurl;
  const ProductImage({super.key, this.imagenurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: _decoracion(),
        child:  ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          child: (imagenurl == null)
          ? const Image(image: AssetImage('assets/no-image.png'),fit: BoxFit.cover,)
          : FadeInImage(
            image: NetworkImage(imagenurl!),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  BoxDecoration _decoracion() => const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))
          ]);
}
