import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _valorSwitch = false;
  bool _valorConfiguracao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: Text("Entrada Switch"),
      ),
      body: Container(
        child: Column(
          children: [
            /* Switch(
              value: _valorSwitch,
              onChanged: (bool v) {
                setState(
                  () {
                    _valorSwitch = v;
                    print(_valorSwitch);
                  },
                );
              },
            ),
            Text("Receber notificações?"),
            ElevatedButton(
                onPressed: () {
                    print("valor " + _valorSwitch.toString());
                },
                child: Text("Confirmar")) */

            SwitchListTile(
              value: _valorSwitch,
              title: Text("Receber notificações?"),
              onChanged: (bool v) {
                setState(() {
                  _valorSwitch = v;
                  print(_valorSwitch);
                });
              },
            ),
            SwitchListTile(
              value: _valorConfiguracao,
              title: Text("Receber notificações?"),
              onChanged: (bool v) {
                setState(() {
                  _valorConfiguracao = v;
                  print(_valorConfiguracao);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
