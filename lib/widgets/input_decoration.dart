import 'package:flutter/material.dart';
//Aqui está sendo criado uma classe com um método para receber os parâmetros (tudo com o intuito de ter um código mais limpo e orgnizado)
class InputDecorations {
  static InputDecoration inputDecoration({
    required String hinttext,
    required String labeltext,
    required Icon icone
  }) {
    return InputDecoration(
       enabledBorder: const UnderlineInputBorder(borderSide:BorderSide(color:Colors.deepPurple)),
      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange, width: 2)),
        hintText: hinttext,
        labelText: labeltext,
        labelStyle: const TextStyle(color: Colors.deepPurple),
        prefixIcon: icone,
    );
  }
}