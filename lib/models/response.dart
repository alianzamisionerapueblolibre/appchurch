// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'dart:convert';

import 'package:app_red_jovenes/models/miembros.dart';

Response responseFromJson(String str) => Response.fromJson(json.decode(str));

String responseToJson(Response data) => json.encode(data.toJson());

class Response {
    Response({
        required this.brother,
    });

    Brother brother;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        brother: Brother.fromJson(json["brother"]),
    );

    Map<String, dynamic> toJson() => {
        "brother": brother.toJson(),
    };
}

class Brother {
    Brother({
        required this.success,
        required this.data,
        this.error,
    });

    bool success;
    List<Miembros> data;
    String? error;

    factory Brother.fromJson(Map<String, dynamic> json) => Brother(
        success: json["success"],
        data: List<Miembros>.from(json["data"].map((x) => Miembros.fromJson(x))),
        error: json["error"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "error": error,
    };
}


