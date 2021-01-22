import 'package:flutter/material.dart';
import 'package:lojacar/src/pages/clients_page.dart';
import 'package:lojacar/src/pages/employees_page.dart';

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
  ///https://material.io/resources/icons/?style=baseline
          Ink(
            //color: Colors.indigo,
            child: new ListTile(
              leading: Icon(Icons.assignment_turned_in, size: 50.0,),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text("Actividades"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(
      
                        builder: (BuildContext context) => new ClientsPage())
                );
                
              },
              
            ),
          ),
           Divider(),
          new ListTile(
            leading: Icon(Icons.people_alt, size: 50.0,),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text("Clientes Odoo"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(
                     builder: (BuildContext conetext) => new ClientsPage())
              );
              Divider();
            },
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.home_work, size: 50.0),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text("Empleados"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(
                     builder: (BuildContext conetext) => new EmployeePage())
              );
            },
          )
        ]

      )
    );
  }
}