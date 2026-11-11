// To parse this JSON data, do
//
//     final pertandinganModel = pertandinganModelFromJson(jsonString);

import 'dart:convert';

List<PertandinganModel> pertandinganModelFromJson(String str) => List<PertandinganModel>.from(json.decode(str).map((x) => PertandinganModel.fromJson(x)));

String pertandinganModelToJson(List<PertandinganModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PertandinganModel {
    final int leagueId;
    final String leagueName;
    final String leagueShortcut;
    final String leagueSeason;
    final Sport sport;

    PertandinganModel({
        required this.leagueId,
        required this.leagueName,
        required this.leagueShortcut,
        required this.leagueSeason,
        required this.sport,
    });

    factory PertandinganModel.fromJson(Map<String, dynamic> json) => PertandinganModel(
        leagueId: json["leagueId"],
        leagueName: json["leagueName"],
        leagueShortcut: json["leagueShortcut"],
        leagueSeason: json["leagueSeason"],
        sport: Sport.fromJson(json["sport"]),
    );

    Map<String, dynamic> toJson() => {
        "leagueId": leagueId,
        "leagueName": leagueName,
        "leagueShortcut": leagueShortcut,
        "leagueSeason": leagueSeason,
        "sport": sport.toJson(),
    };
}

class Sport {
    final int sportId;
    final SportName sportName;

    Sport({
        required this.sportId,
        required this.sportName,
    });

    factory Sport.fromJson(Map<String, dynamic> json) => Sport(
        sportId: json["sportId"],
        sportName: sportNameValues.map[json["sportName"]]!,
    );

    Map<String, dynamic> toJson() => {
        "sportId": sportId,
        "sportName": sportNameValues.reverse[sportName],
    };
}

enum SportName {
    BASKETBALL,
    CRICKET,
    EISHOCKEY,
    FOOTBALL,
    FRAUENFUBALL,
    FUBALL,
    HANDBALL,
    KUBB,
    QUIDDITCH,
    ROBOTERFUBALL,
    TEST,
    TISCHTENNIS
}

final sportNameValues = EnumValues({
    "Basketball": SportName.BASKETBALL,
    "Cricket": SportName.CRICKET,
    "Eishockey": SportName.EISHOCKEY,
    "Football": SportName.FOOTBALL,
    "Frauenfußball": SportName.FRAUENFUBALL,
    "Fußball": SportName.FUBALL,
    "Handball": SportName.HANDBALL,
    "Kubb": SportName.KUBB,
    "Quidditch": SportName.QUIDDITCH,
    "Roboterfußball": SportName.ROBOTERFUBALL,
    "Test": SportName.TEST,
    "Tischtennis": SportName.TISCHTENNIS
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
  