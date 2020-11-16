import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContacto.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _abrirEmpresa(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaEmpresa() ));
  }

  void _abrirServico(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaServico() ));
  }

  void _abrirCliente(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaCliente() ));
  }

  void _abrirContacto(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaContacto() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("ATM Consultaria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
                padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("images/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirContacto,
                    child: Image.asset("images/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
