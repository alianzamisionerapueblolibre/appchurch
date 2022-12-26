// To parse this JSON data, do
//
//     final anuncio = anuncioFromJson(jsonString);

import 'dart:convert';

Anuncio anuncioFromJson(String str) => Anuncio.fromJson(json.decode(str));

String anuncioToJson(Anuncio data) => json.encode(data.toJson());

class Anuncio {
    Anuncio({
        required this.id,
        required this.descripcion,
        this.fechaEvento,
        this.imagenEvento,
    });

    int id;
    String descripcion;
    String? fechaEvento;
    String? imagenEvento;

    factory Anuncio.fromJson(Map<String, dynamic> json) => Anuncio(
        id: json["Id"],
        descripcion: json["Descripcion"],
        fechaEvento: json["FechaEvento"],
        imagenEvento: json["ImagenEvento"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Descripcion": descripcion,
        "FechaEvento": fechaEvento,
        "ImagenEvento": imagenEvento,
    };
}
