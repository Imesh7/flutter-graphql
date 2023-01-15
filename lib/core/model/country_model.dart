// To parse this JSON data, do
//
//     final countries = countriesFromMap(jsonString);

import 'dart:convert';

Countries? countriesFromMap(String str) => Countries.fromMap(json.decode(str));

String countriesToMap(Countries? data) => json.encode(data!.toMap());


class Countries {
    Countries({
        this.countries,
    });

    List<Country?>? countries;

    factory Countries.fromMap(Map<String, dynamic> json) => Countries(
        countries: json["countries"] == null ? [] : List<Country?>.from(json["countries"]!.map((x) => Country.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "countries": countries == null ? [] : List<dynamic>.from(countries!.map((x) => x!.toMap())),
    };
}

class Country {
    Country({
        this.code,
        this.currency,
        this.name,
    });

    String? code;
    String? currency;
    String? name;

    factory Country.fromMap(Map<String, dynamic> json) => Country(
        code: json["code"],
        currency: json["currency"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "currency": currency,
        "name": name,
    };
}
