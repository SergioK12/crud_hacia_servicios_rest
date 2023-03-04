import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const  EdgeInsets.only(top: 30,bottom: 50),
        width: double.infinity,
        height: 400,
        decoration: _cardborder(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _backgroundImage(),
            const _Productdetail()
          ],
        ),
      ),
    );
  }

  ClipRRect _backgroundImage() => ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      width: double.infinity,
      height: 400,
      color: Colors.green,
      child: const FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage('https://via.placeholder.com/400x300/f6f6f6'),
        fit: BoxFit.cover,
      ),
    ),
  );

  BoxDecoration _cardborder() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 7)
          ),
        ],
        
      );
  }
}

class _Productdetail extends StatelessWidget {
  const _Productdetail();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.purple,

    );
  }
}