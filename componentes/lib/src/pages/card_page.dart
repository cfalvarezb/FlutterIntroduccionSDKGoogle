import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), //this way is used for give symetric dimensions 
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }
  
  Widget _cardTipo1() {
      return Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon( Icons.photo_album, color: Colors.blue, ),
                title: Text('Soy el titulo de esta tarjeta'),
                subtitle: Text('sdfgsdgfdsgsdfgsdfgsdfgdgdsfgdfg sdfg sdfg sdfg sdf gd fg sdfg sdfg sdf gs dfg sd fg sdf gs dfg sdfg sd gh fgh dfg dfs gs dfg sdfg  dfg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                      child: Text('Cancelar'),
                      onPressed: (){}
                  ),
                  TextButton(
                      child: Text('Ok'),
                      onPressed: (){}
                  ),
                ],
              )
            ],
          ),
      );
  }
  
  Widget _cardTipo2() {
      return Card(
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage(
                'https://www.wallpapers13.com/wp-content/uploads/2019/09/Lake-in-Guatemala-Lake-Atitl%C3%A1n-large-volcanic-crater-in-the-southwestern-highlands-of-guatemala-photo-landscape-4K-Ultra-HD-Wallpaper-for-Desktop-840x525.jpg'
              ),
              fadeInDuration: Duration( milliseconds: 200 ),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            /*
            Image(
              image: NetworkImage(
                'https://www.wallpapers13.com/wp-content/uploads/2019/09/Lake-in-Guatemala-Lake-Atitl%C3%A1n-large-volcanic-crater-in-the-southwestern-highlands-of-guatemala-photo-landscape-4K-Ultra-HD-Wallpaper-for-Desktop-840x525.jpg'
              )
            ),
            */
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('i do not know what put'),
            )
          ]),
      );
  }
}