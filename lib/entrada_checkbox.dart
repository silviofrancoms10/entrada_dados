import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _estaSelecionadoA = false;
  bool _estaSelecionadoB = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Entrada checkbox",
        ),
      ),
      body: Container(
        child: Column(
          children: [
            /* 
            Text("Comida brasileira"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (bool? valor) {
                  setState(() {
                    _estaSelecionado = valor!;
                    print("Checkbox: $_estaSelecionado");
                  });
                }), 
                */
            CheckboxListTile(
              title: Text("Comida brasileira"),
              value: _estaSelecionadoA,
              onChanged: (bool? resultado) {
                setState(() {
                  _estaSelecionadoA = resultado!;
                  print(_estaSelecionadoA);
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida mexicana"),
              value: _estaSelecionadoB,
              onChanged: (bool? resultado) {
                setState(() {
                  _estaSelecionadoB = resultado!;
                  print(_estaSelecionadoB);
                });
              },
            ),
            ElevatedButton(onPressed: (){
              print("Comida brasileira: $_estaSelecionadoA Comida mexicana: $_estaSelecionadoB");
            }, child: Text("Salvar")),
          ],
        ),
      ),
    );
  }
}
