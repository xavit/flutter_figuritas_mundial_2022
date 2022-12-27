// To parse this JSON data, do
//
//     final figurines = figurinesFromJson(jsonString);

import 'dart:convert';

Figurines figurinesFromJson(String str) => Figurines.fromJson(json.decode(str));

String figurinesToJson(Figurines data) => json.encode(data.toJson());

class Figurines {
  Figurines({
    this.data,
    this.state,
    this.message,
  });

  Data? data;
  int? state;
  String? message;

  factory Figurines.fromJson(Map<String, dynamic> json) => Figurines(
        data: Data.fromJson(json["data"]),
        state: json["state"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
        "state": state,
        "message": message,
      };
}

class Data {
  Data({
    required this.countries,
  });

  List<Country> countries;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        countries: List<Country>.from(
            json["countries"].map((x) => Country.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "countries": List<dynamic>.from(countries.map((x) => x.toJson())),
      };
}

class Country {
  Country({
    this.idCountry,
    this.nameCountry,
    this.logoCountry,
    this.players,
    this.status,
  });

  int? idCountry;
  String? nameCountry;
  String? logoCountry;
  List<Player>? players;
  bool? status;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        idCountry: json["idCountry"],
        nameCountry: json["nameCountry"],
        logoCountry: json["logoCountry"],
        players:
            List<Player>.from(json["players"].map((x) => Player.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "idCountry": idCountry,
        "nameCountry": nameCountry,
        "logoCountry": logoCountry,
        "players": List<dynamic>.from(players!.map((x) => x.toJson())),
        "status": status,
      };
}

class Player {
  Player({
    this.idFigurine,
    this.idPlayer,
    this.namePlayer,
    this.duplicates,
    this.status,
  });

  int? idFigurine;
  int? idPlayer;
  String? namePlayer;
  int? duplicates;
  bool? status;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        idFigurine: json["idFigurine"],
        idPlayer: json["idPlayer"],
        namePlayer: json["namePlayer"],
        duplicates: json["duplicates"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "idFigurine": idFigurine,
        "idPlayer": idPlayer,
        "namePlayer": namePlayer,
        "duplicates": duplicates,
        "status": status,
      };
}
