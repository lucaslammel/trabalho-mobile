import 'package:flutter/material.dart';

class BarraInferior extends StatelessWidget {
  final int indiceAtual;

  BarraInferior(this.indiceAtual);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indiceAtual,
      onTap: (_){},
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            activeIcon: Icon(Icons.home, color: Colors.white),
            label: "",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue),
            activeIcon: Icon(Icons.search, color: Colors.white,),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.mail, color: Colors.blue),
            activeIcon: Icon(Icons.mail, color: Colors.white,),
            label: ""
        ),
      ],
    );
  }
}
