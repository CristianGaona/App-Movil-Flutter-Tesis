import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:lojacar/src/models/clients_model.dart';



class ClientsProvider  {
  // si esta en forma local debe coloar la IPV4 de la PC
  String _url = '192.168.1.107:8015'; //Url global
  // Recuperar datos de la API (consumir)
  Future<List<Client>> getList() async{
    final url = Uri.http(_url, '/list'); //endpoint
    final resp =  await http.get(url); // obtner URL completa Ejemplo(http://127.0.0.1:8015/list)
    final decodedData = json.decode(resp.body); // decodificar el JSON a una lista

    //print(decodedData);

    List<Client> clients = [];

    for (var u in decodedData ) {
      Client user =  Client.m(id: u["id"], name: u["name"], email: u["email"]);
      clients.add(user);
    }
    print(clients.length);
    return clients;
  }

}