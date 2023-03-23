import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController(); 

  List<int> _listaNumeros = new List.empty( growable: true );
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
          //_agregar10();
          fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack( //stack one over other
        children: <Widget>[
          _crearLista(),
          _crearLoading()
        ],
      ),
    );
  }

  Widget _crearLista() {
      return RefreshIndicator(

        onRefresh: _obtenerPagina1,

        child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (context, index) {
            final imagen = _listaNumeros[index];
      
            return FadeInImage( 
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300/?image=$imagen')
            );
          },
        ),
      );
  }

  Future<Null> _obtenerPagina1() async {

      const duration = Duration( seconds: 2 );
      Timer(duration, () { 

        _listaNumeros.clear();
        _ultimoItem++;
        _agregar10();

      });

      return Future.delayed(duration);

  }

  void _agregar10() {
    for ( var i = 0; i < 10; i++ ) {
      _ultimoItem++;
      _listaNumeros.add( _ultimoItem );
    }

    setState(() {
    });
  }
  
  Future fetchData() async {

    _isLoading = true;

    setState(() {});

    final duration = new Duration( seconds: 2 );

    return new Timer(duration, respuestaHTTP);

  }

  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: const Duration( milliseconds: 250 )
    );

    _agregar10();
  }
  
  _crearLoading() {
    if ( _isLoading ) {
      return const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox( height: 30.0,)
        ],
      );
    } else {
      return Container();
    }
  }
  
}