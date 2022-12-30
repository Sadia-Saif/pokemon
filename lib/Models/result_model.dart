class Result {
  Result({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}
