import 'package:flutter/material.dart';

class TelaContacto extends StatefulWidget {
  @override
  _TelaContactoState createState() => _TelaContactoState();
}

class _TelaContactoState extends State<TelaContacto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contacto"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Contacto",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("atendimento@atmconsultoria.com"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Telemovel: (+351) 913652367"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
