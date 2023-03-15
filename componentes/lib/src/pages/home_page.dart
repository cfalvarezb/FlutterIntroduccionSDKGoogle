import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
  
  Widget _lista() {
    //print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listItems( snapshot.data, context ),
        );
      },
    );

    //return 
  }
  
  List<Widget> _listItems( List<dynamic>? data, BuildContext context) {
      final List<Widget> opciones = [];

      data!.forEach((opt) {
        final widgetTemp = ListTile( 
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blue ),
          onTap: () {
            /* Way old to navigate
              final route = MaterialPageRoute(
                builder: (context) => AlertPage()
              );
              Navigator.push(context, route);
            */
            Navigator.pushNamed(context, opt['ruta']);
          },
        );

        opciones..add(widgetTemp)
                ..add(Divider());
      });
      return opciones;
  }
}