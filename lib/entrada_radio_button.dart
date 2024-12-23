import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Entrada radio button"),
      ),
      body: Container(
        child: Column(
          children: [
            /* Text("Masculino"),
            Radio(
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? valor) {
                  setState(() {
                    _escolhaUsuario = valor!;
                  });
                }),
            Text("Feminino"),
            Radio(
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String? valor) {
                  setState(() {
                    _escolhaUsuario = valor!;
                  });
                }), */

            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String? v) {
                setState(() {
                  _escolhaUsuario = v!;
                  print(_escolhaUsuario);
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? v) {
                setState(() {
                  _escolhaUsuario = v!;
                  print(_escolhaUsuario);
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Botão Salvar: $_escolhaUsuario");
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
