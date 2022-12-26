
import 'dart:convert';

import 'package:app_red_jovenes/models/anuncio.dart';
import 'package:app_red_jovenes/models/response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AnunciosServicio extends ChangeNotifier  {
  final String _baseUrl  = '192.168.18.20:3000';
  final Response response = Response(brother: Brother(data: [], success: false));
  final List<Anuncio> anuncios = [];
  bool isLoading = true;

  AnunciosServicio() {
    listarAnuncios();
  }

  Future<List<Anuncio>> listarAnuncios() async {

    isLoading = true;
    notifyListeners();

    Anuncio anuncio = Anuncio(id: 1, descripcion: '51 Aniversario IACYM Pueblo Libre');
    anuncio.fechaEvento = "11 Noviembre 2022";
    anuncio.imagenEvento = "assets/aniversario.jpeg";

    anuncios.add(anuncio);

    Anuncio anuncio2 = Anuncio(id: 2, descripcion: 'Peniel Unido Redes de Jovenes');
    anuncio2.fechaEvento = "18 Noviembre 2022";
    anuncio2.imagenEvento = "assets/peniel.jpeg";

    anuncios.add(anuncio2);

    Anuncio anuncio3 = Anuncio(id: 3, descripcion: 'Culto Especial y Alabanza');
    anuncio3.fechaEvento = "24 Octubre 2022";
    anuncio3.imagenEvento = "assets/culto_especial.jpeg";

    anuncios.add(anuncio3);

    isLoading = false;
    notifyListeners();
    return anuncios;
    
  }

}