import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite seu e-mail",
              ),
              //enabled: false,
              //maxLength: 5,
              //maxLengthEnforcement: MaxLengthEnforcement.none,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              //obscureText: true,
              //onChanged: (String t) {print("Texto digitado $t");},
              onSubmitted: (String t) {
                print("Texto enviado: $t");
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll<Color>(Colors.blue.shade300)),
            onPressed: () {
              print("valor digitado $_textEditingController");
            },
            child: Text(
              "Salvar",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      //body: ,
    );
  }
}
