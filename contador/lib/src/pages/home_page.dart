import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle( fontSize: 25 );

  int conteo = 10;

  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo'), 
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks: ', style: estiloTexto),
            Text( '$conteo' , style: estiloTexto),
          ],
        )
      ),
      // para cambiar la posicion del boton flotante floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () => {
          //print('Hola mundo!');
          //conteo = conteo + 1;
        }
        ),
    );
  }
}