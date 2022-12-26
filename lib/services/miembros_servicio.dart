
import 'dart:convert';

import 'package:app_red_jovenes/models/miembros.dart';
import 'package:app_red_jovenes/models/response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MiembrosServicio extends ChangeNotifier  {
  final String _baseUrl  = '192.168.18.20:3000';
  final Response response = Response(brother: Brother(data: [], success: false));
  final List<Miembros> miembros = [];
  List<Miembros> miembrosSearch = [];
  bool isLoading = true;

  MiembrosServicio() {
    listarMiembros();
  }

  Future<List<Miembros>> listarMiembros() async {

    isLoading = true;
    notifyListeners();

    final url = Uri.http(_baseUrl, 'brother');
    
    final resp = await http.get( url );

    final Map<String, dynamic> miembrosMap = json.decode(resp.body);

      final respuesta = Response.fromJson(miembrosMap);
      if(respuesta.brother.success) {
        for (var element in respuesta.brother.data) {
          miembros.add(element);
        }
        
      }

      miembrosSearch = miembros;

      isLoading = false;
      notifyListeners();

      return miembrosSearch;
    
  }

  Future<List<Miembros>> searchMiembros( String val ) async {

    isLoading = true;
    notifyListeners();

    miembrosSearch = miembros.where((user) => user.firstName.contains(val))
                            .toList();

    isLoading = false;
    notifyListeners();
    return miembrosSearch;
    
  }
}