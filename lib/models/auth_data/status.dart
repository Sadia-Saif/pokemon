import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class Status {
  final String label;
  final DateTime? until;
  Status({
    required this.label,
    this.until,
  });

  Status copyWith({
    String? label,
    DateTime? until,
  }) {
    return Status(
      label: label ?? this.label,
      until: until ?? this.until,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'until': until,
    };
  }

  factory Status.fromMap(Map<String, dynamic> map) {
    return Status(
      label: map['label'] as String,
      until: map['until'] == null
          ? DateTime.now()
          : (map['until'] as Timestamp).toDate(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Status.fromJson(String source) =>
      Status.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Status(label: $label, until: $until)';

  @override
  bool operator ==(covariant Status other) {
    if (identical(this, other)) return true;

    return other.label == label && other.until == until;
  }

  @override
  int get hashCode => label.hashCode ^ until.hashCode;
}
