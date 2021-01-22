

import 'package:flutter/material.dart';
import 'package:lojacar/src/providers/employees_providers.dart';

class EmployeePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Empleados Loja Car'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],

      ),
      body: Container(
            // color: Colors.blueAccent,
            child: _employeesAPI()));
   
  }

  _employeesAPI(){
      EmployeesProvider employeeProvider = new EmployeesProvider();

    

    return FutureBuilder(
      future: employeeProvider.getList(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot){
        if (snapshot.data == null) {
            return Container(
                //color: Colors.black,
                height: 400.0,
                child: Center(
                  child: Text("Loading...",
                  style: TextStyle(fontSize: 70),
                  )));
          }else{
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: Icon(Icons.contacts, size:50.0),
                  title: Text(snapshot.data[index].nombres + " "+ snapshot.data[index].apellidos),
                  subtitle: Text(snapshot.data[index].rol),
                  trailing: Icon(Icons.keyboard_arrow_right),

                  onTap:(){},

                );
              },
            );
          }
      }
    );
    
  }

}