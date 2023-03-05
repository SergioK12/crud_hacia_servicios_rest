import 'package:crud_servicos/ui/inputdecorations.dart';
import 'package:crud_servicos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("ProductosView"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:  [
                const ProductImage(),
                Positioned(top: 20,left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 40, color: Colors.white,),
                  onPressed: (){Navigator.of(context).pop();},
                )),

                Positioned(top: 20,right: 20,
                child: IconButton(
                  icon: const Icon(Icons.camera_alt_outlined,size: 40, color: Colors.white,),
                  onPressed: (){
                    //Camara o galeria
                    debugPrint("camara");
                  },
                )),
              ],
            ),
            const _FormularioDelProducto(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const  Icon(Icons.save_as_outlined),
        onPressed: (){},
      ),
    );
  }
}

class _FormularioDelProducto extends StatelessWidget {
  const _FormularioDelProducto();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal:10),
      child: Container(
        padding: const  EdgeInsets.symmetric(horizontal: 20),
        decoration: _buildboxdecoration(),
        width: double.infinity,
        height: 350,
        child: Form(child: 
        Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecorations.authInputDecoration(
                labeltextt: 'Nombre del producto',
                hinText: 'Nombre:'),
            ),
            
            const SizedBox(height: 30),
             TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                labeltextt: '\$150',
                hinText: 'Precio:'),
            ),
            
            const SizedBox(height: 30),
            Switch.adaptive(value: true, onChanged: (value){})

          ],
        )),
      ),
    );
  }

  BoxDecoration _buildboxdecoration() {
    return  BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 5,
          offset: const Offset(0, 5)
        )
      ]
    );
  }
}
