class Company {
  String name;
  String catchPhrase;
  String bs;
  Company({required this.name, required this.catchPhrase, required this.bs});
  factory Company.fromJson(Map<String, dynamic> jsonMap) {
    return Company(
      name: jsonMap['name'] ?? '',
      catchPhrase: jsonMap['catchPhrase'] ?? '',
      bs: jsonMap['bs'] ?? '',
    );
  }
}