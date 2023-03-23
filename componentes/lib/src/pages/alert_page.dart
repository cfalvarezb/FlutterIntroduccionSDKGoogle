import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          style: const ButtonStyle( 
            backgroundColor: MaterialStatePropertyAll( Colors.blue ),
            shape: MaterialStatePropertyAll(StadiumBorder())
          ),
          
          child: const Text('Mostrar Alerta')
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add_location ),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }

  void _mostrarAlert( context ) {
    showDialog(
      context: context, 
      barrierDismissible: true, // this is use to block the dialog window when clic over any part
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5.0) ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo( size: 100,)
              ],
            ),
            actions: <Widget> [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(), 
                  child: Text('Cancelar')
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: Text('Ok')
                )
            ],
        );

      },
    );
  }

}