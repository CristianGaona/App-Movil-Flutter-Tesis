import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lojacar/src/models/employees_model.dart';

class EmployeesProvider {
  String _url = '192.168.1.107:8007';

  Future<List<Employee>> getList() async{
    final url = Uri.http(_url, '/listar');
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    List<Employee> employees = [];

    for (var u in decodedData){
      Employee employee = Employee.m(employeeId: u["employeeId"], nombres: u["nombres"], apellidos: u["apellidos"], rol: u["rol"]);
      employees.add(employee);
    }
    print(employees.length);
    return employees;
  }
}