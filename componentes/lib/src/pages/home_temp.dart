//This class was created writing statelessw and clic on the shortcut that appear in the suggestion menu 
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista;
    lista = List.empty(growable: true);

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
          ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {

    return opciones.map((String item) {
        return Column(
          children: [
            ListTile(
              title: Text(item + '!'),
              subtitle: Text('Detalle'),
              leading: Icon(Icons.keyboard_arrow_left),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider()
          ],
        );
    }).toList();

  }

}