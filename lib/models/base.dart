import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:pokemon/models/result.dart';

class Base {
  Base({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });

  final int count;
  final String? next;
  final String? previous;
  final List<Result> results;

  Base copyWith({
    int? count,
    String? next,
    String? previous,
    List<Result>? results,
  }) {
    return Base(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory Base.fromMap(Map<String, dynamic> map) {
    return Base(
      count: map['count'] as int,
      next: map['next'] != null ? map['next'] as String : null,
      previous: map['previous'] != null ? map['previous'] as String : null,
      results: List<Result>.from(
        (map['results'] as List).map<Result>(
          (x) => Result.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Base.fromJson(String source) =>
      Base.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Base(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(covariant Base other) {
    if (identical(this, other)) return true;

    return other.count == count &&
        other.next == next &&
        other.previous == previous &&
        listEquals(other.results, results);
  }

  @override
  int get hashCode {
    return count.hashCode ^
        next.hashCode ^
        previous.hashCode ^
        results.hashCode;
  }
}
