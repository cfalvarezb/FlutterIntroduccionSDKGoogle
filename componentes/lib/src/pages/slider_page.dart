import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _createSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        )
      ),
    );
  }
  
  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0, 
      onChanged: ( _bloquearCheck ) ? null : (value) {
        setState(() {
          _valorSlider = value;
        });
      },
    );
  }

  Widget _crearCheckBox() {

    /* One way to create checkbox
    return Checkbox(
      value: _bloquearCheck, 
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
    */

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }
  
  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/8f/bd/8f/8fbd8f33e15a1ac3f0d10fb41f61ba4a.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }
  
}