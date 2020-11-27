import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stimulus/pages/menu_principal.dart';

class VerificacaoLogin {
  VerificacaoLogin.verific(email, senha, context) {
    buscar(email, senha, context) async {
      var response = await http
          .post("http://192.168.1.170:3434/api/procurar/$email/$senha");
      var dados = jsonDecode(response.body);

      if (dados['message'] == 'success') {
        debugPrint(dados['user'].toString());
        debugPrint(dados['coletaFragilidade'].toString());
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MenuPage()));
      }
    }

    buscar(email, senha, context);
  }
}
