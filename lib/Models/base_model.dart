// To parse this JSON data, do
//
//     final base = baseFromJson(jsonString);

import 'dart:convert';

import 'package:pokemon/Models/result_model.dart';

Base baseFromMap(String str) => Base.fromMap(json.decode(str));

String baseToMap(Base data) => json.encode(data.toMap());

class Base {
  Base({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });

  int count;
  String next;
  dynamic previous;
  List<Result> results;

  factory Base.fromMap(Map<String, dynamic> json) => Base(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

