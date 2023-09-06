import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'configuracoes.dart';

class MenuLateral extends StatelessWidget {

  MenuLateral();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black
            ),
            accountName: Text("Admin"),
            accountEmail: Text("@administrador"),
            currentAccountPicture: CircleAvatar(
              //child: Text("RL"),
                backgroundColor: Colors.white,
              //backgroundImage: AssetImage('imagens/user.png'),
            ),
          ),
          ListTile(
            title: Text("Account", style: TextStyle(color: Colors.lightBlue.shade600, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.account_circle, color: Colors.lightBlue.shade600,),
            onTap: (){},
          ),
          ListTile(
            title: Text("Bookmarks", style: TextStyle(color: Colors.lightBlue.shade600, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.bookmark, color: Colors.lightBlue.shade600,),
            onTap: (){}
          ),
          ListTile(
            title: Text("Lists",style: TextStyle(color: Colors.lightBlue.shade600, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.list_alt, color: Colors.lightBlue.shade600,),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
