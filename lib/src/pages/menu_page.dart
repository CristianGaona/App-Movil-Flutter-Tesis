import 'package:flutter/material.dart';
import 'package:lojacar/src/pages/clients_page.dart';

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer (
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: Text("LOJA CAR"),
              accountEmail: Text("info@lojacar.com.ec"),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://lojacar.com.ec/images/servicios/posventa_lojacar_5.jpg"),
             fit: BoxFit.cover

              )


            ),


          ),

          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text("Usuarios", style: TextStyle(color: Colors.white),),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(
      
                        builder: (BuildContext context) => new ClientsPage())
                );
              },
            ),
          ),
          new ListTile(
            title: Text("Clientes"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(
                     builder: (BuildContext conetext) => new ClientsPage())
              );
            },
          )
        ]

      )
    );
  }
}