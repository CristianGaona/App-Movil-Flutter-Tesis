import 'package:flutter/material.dart';
import 'package:lojacar/src/providers/clients_providers.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    ClientsProvider clientsProvider = new ClientsProvider();
    clientsProvider.getList();
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: false,
          title: Text('Bievenidos a LojaCar'),
          backgroundColor: Colors.indigoAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: 
          FutureBuilder(
          future: clientsProvider.getList(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                  child: Center(
                child: Text("Loading..."),
              ));
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.contact_mail, size: 50.0),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  );
                },
              );
            }
          })
          
        
        
        );
  }

  /*Widget _clientstAPI() {
    ClientsProvider clientsProvider = new ClientsProvider();
    clientsProvider.getList();

    return FutureBuilder(
          future: clientsProvider.getList(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                  child: Center(
                child: Text("Loading..."),
              ));
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.contact_mail, size: 50.0),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  );
                },
              );
            }
          });
    
  }*/
}
