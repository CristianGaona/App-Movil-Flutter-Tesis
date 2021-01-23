import 'package:flutter/material.dart';
import 'package:lojacar/src/models/employees_model.dart';
import 'package:lojacar/src/providers/employees_providers.dart';

class ActivityPage extends StatelessWidget {
  final Employee user;
  ActivityPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Actividades'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],

      ),
      body: Container(
        child: _activitiesAPI())
        );
  }

  _activitiesAPI(){
    ActivityProvider acttivityProvider = new ActivityProvider();
    acttivityProvider.getList(user.employeeId);

    return FutureBuilder(
      future: acttivityProvider.getList(user.employeeId),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          //print(user.employeeId);
          if (snapshot.data == null) {
            return Container(
                //color: Colors.black,
                height: 400.0,
                child: Center(
                  child: Text("Loading...",
                  style: TextStyle(fontSize: 70),
                  )));
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,

              itemBuilder: (BuildContext context, int index){
                if (snapshot.data[index].description == null){
                  return Container(
                //color: Colors.black,
                height: 400.0,
                child: Center(
                  child: Text("No tiene actividades asignadas...",
                  style: TextStyle(fontSize: 30),
                  )));

                }else{
                  return ListTile(
                  leading: Icon(Icons.wysiwyg, size: 50.0),
                  title: Text(snapshot.data[index].description),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:(){},
                  );

                }
                
              },
              
              );
          }
      }

      );
  }
}