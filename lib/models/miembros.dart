// To parse this JSON data, do
//
//     final miembros = miembrosFromJson(jsonString);

import 'dart:convert';

Miembros miembrosFromJson(String str) => Miembros.fromJson(json.decode(str));

String miembrosToJson(Miembros data) => json.encode(data.toJson());

class Miembros {
    Miembros({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.identityDocument,
        required this.cellphone,
        required this.email,
        required this.address,
        this.imagenPerfil
    });

    int id;
    String firstName;
    String lastName;
    String identityDocument;
    String cellphone;
    String email;
    String address;
    String? imagenPerfil;

    factory Miembros.fromJson(Map<String, dynamic> json) => Miembros(
        id: json["Id"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        identityDocument: json["IdentityDocument"],
        cellphone: json["Cellphone"],
        email: json["Email"],
        address: json["Address"],
        imagenPerfil: json["imagenPerfil"]
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "FirstName": firstName,
        "LastName": lastName,
        "IdentityDocument": identityDocument,
        "Cellphone": cellphone,
        "Email": email,
        "Address": address,
        "imagenPerfil": imagenPerfil
    };
}
