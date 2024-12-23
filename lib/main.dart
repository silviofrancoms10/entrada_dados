import 'package:flutter/material.dart';
import 'package:myapp/campo_texto.dart';
import 'package:myapp/entrada_checkbox.dart';
import 'package:myapp/entrada_radio_button.dart';
import 'package:myapp/entrada_slider.dart';
import 'package:myapp/entrada_switch.dart';

void main() {
  runApp(MaterialApp(
    //home: CampoTexto(),
    // home: EntradaCheckbox(),
    // home: EntradaRadioButton(),
    // home: EntradaSwitch(),
    home: EntradaSlider(),
    debugShowCheckedModeBanner: false,
  ));
}
