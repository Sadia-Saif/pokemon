// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LastSearch {
  final String propertyType;
  final String city;
  final String priceRange;
  LastSearch({
    required this.propertyType,
    required this.city,
    required this.priceRange,
  });

  LastSearch copyWith({
    String? propertyType,
    String? city,
    String? priceRange,
  }) {
    return LastSearch(
      propertyType: propertyType ?? this.propertyType,
      city: city ?? this.city,
      priceRange: priceRange ?? this.priceRange,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyType': propertyType,
      'city': city,
      'priceRange': priceRange,
    };
  }

  factory LastSearch.fromMap(Map<String, dynamic> map) {
    return LastSearch(
      propertyType: map['propertyType'] as String,
      city: map['city'] as String,
      priceRange: map['priceRange'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory LastSearch.fromJson(String source) =>
      LastSearch.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'LastSearch(propertyType: $propertyType, city: $city, priceRange: $priceRange)';

  @override
  bool operator ==(covariant LastSearch other) {
    if (identical(this, other)) return true;

    return other.propertyType == propertyType &&
        other.city == city &&
        other.priceRange == priceRange;
  }

  @override
  int get hashCode =>
      propertyType.hashCode ^ city.hashCode ^ priceRange.hashCode;
}
