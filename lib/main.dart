import 'package:flutter/material.dart';
import 'barra_inferior.dart';
import 'favoritos.dart';
import 'menu_lateral.dart';
import 'meus_pedidos.dart';
import 'HomePage.dart';

void main() => runApp(MaterialApp(
  home: PrimeiroApp(),
  debugShowCheckedModeBanner: false,
));


class PrimeiroApp extends StatefulWidget {
  @override
  State<PrimeiroApp> createState() => _PrimeiroAppState();
}

class _PrimeiroAppState extends State<PrimeiroApp> {
  int indeceAtual = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.ac_unit, color: Colors.lightBlue.shade600,),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BarraInferior(indeceAtual),
      drawer: MenuLateral(),
    );
  }

}

