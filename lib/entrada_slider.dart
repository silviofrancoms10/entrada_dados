import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({super.key});

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Slider"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
              value: _valorSlider,
              min: 0,
              max: 10,
              divisions: 20,
              label: "Valor selecionado " + _valorSlider.toString(),
              onChanged: (double v) {
                setState(() {
                  _valorSlider = v;
                  print(_valorSlider);
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  print("valor slider: " + _valorSlider.toString());
                },
                child: Text("Enviar"))
          ],
        ),
      ),
    );
  }
}
